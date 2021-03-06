package Work {

import Chisel._
import Node._

class convolution_wrapper(windowSize : Integer, dataWidth: Integer, coeffWidth: Integer, coeffFract: Integer, pipeStages: Integer) extends Component {
  val io = new Bundle {
    val din   = Vec(windowSize) { UFix(dir = INPUT, width = dataWidth) }
    val coeff = Vec(windowSize) { UFix(dir = INPUT, width = coeffWidth) }
    val dout = UFix(OUTPUT, dataWidth)
  }

  // register inputs (won't be moved during retiming)
  val din_regs = Reg(io.din);
  val coeff_regs = Reg(io.coeff);

  // instantiate combinational convolution module
  val conv = new convolution(windowSize, dataWidth, coeffWidth, coeffFract)
  conv.io.din := din_regs  //io.din
  conv.io.coeff := coeff_regs

  // register convolution module's output
  val result_reg  = Reg(conv.io.dout)

  // need to make sure things are named a certain way because
  // register names need to be specified during retiming:
  // dout_reg is connected to the output of wrapper module (won't be moved during retiming)
  // result_reg is connected to the output of convolution module (will be moved during retiming)
  // NOTE: registers that are moved during retiming will be renamed, with names like clk_r_*

  val dout_reg = Reg(UFix(width = dataWidth))
  if (pipeStages == 1) {
    dout_reg := conv.io.dout
  } else if (pipeStages == 2) {
    dout_reg := result_reg
  } else {
    // add additional registers between result_reg and dout_reg (will be moved during retiming)
    val dout_pipe = Vec(pipeStages-2) { Reg() { UFix(width = dataWidth) } }
    dout_pipe(0) := result_reg
    for (i <- 1 until pipeStages-2) {
      dout_pipe(i) := dout_pipe(i-1)
    }
    dout_reg := dout_pipe(pipeStages-3)
  } 

  io.dout := dout_reg    
}

class convolution(windowSize: Integer, dataWidth: Integer, coeffWidth: Integer, coeffFract: Integer) extends Component {
  val io = new Bundle {
    val din   = Vec(windowSize) { UFix(dir = INPUT, width = dataWidth) }
    val coeff = Vec(windowSize) { UFix(dir = INPUT, width = coeffWidth) }
    val dout = UFix(OUTPUT, dataWidth)
    
  }
  val p = Vec(windowSize){UFix(width=coeffWidth+dataWidth)}
  val product = Vec(windowSize){UFix(width=coeffWidth+dataWidth+1)}
  val add0  = Vec((windowSize-1)/2){UFix(width=coeffWidth+dataWidth+1)}
  val add1  = Vec((windowSize-1)/4){UFix(width=coeffWidth+dataWidth+1)}
  val add2  = Vec((windowSize-1)/8){UFix(width=coeffWidth+dataWidth+1)}
  val add3  = Vec(2){UFix(width=coeffWidth+dataWidth+1)}
  for (i<-0 until windowSize){
    p(i) := io.coeff(i)*io.din(i)
    product(i) = Cat(p(i)(coeffWidth+dataWidth-1),p(i)(coeffWidth+dataWidth-1,0))}
  for (i<-0 until (windowSize-1)/2){
    add0(i) := product(2*i) + product(2*i+1)}
  for (i<-0 until (windowSize-1)/4){
    add1(i) := add0(2*i)+add0(2*i+1)}
  for (i<-0 until (windowSize-1)/8){
    add2(i) := add1(2*i)+add1(2*i+1)}
  add3(0) := add2(0)+add2(1)
  add3(1) := add2(2)+product(windowSize-1)
  val temp = add3(0)+add3(1) + UFix(1<<(coeffFract-1))
  val overflow = temp(coeffWidth+dataWidth,coeffFract+dataWidth)
  val saturation = Mux(temp(coeffWidth+dataWidth)===UFix(1),UFix(0,dataWidth),UFix(255,dataWidth))
  io.dout := Mux(overflow === UFix(0),temp(coeffFract+dataWidth-1,coeffFract),saturation)
  }


}
