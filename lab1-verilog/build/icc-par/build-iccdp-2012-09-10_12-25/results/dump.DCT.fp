###################################################################

# Created by write_floorplan on Mon Sep 10 12:26:12 2012

###################################################################
undo_config -disable

remove_die_area 

create_die_area  \
	-poly {	{0.000 0.000} {129.760 0.000} {129.760 129.120} {0.000 129.120} {0.000 0.000}} 
set oldSnapState [set_object_snap_type -enabled false]

#*********
#  Row  
# obj#: 24 
# objects are in arbitrary ordering 
#*********

remove_core_area -verbose

create_core_area  \
	-name unit    \
	-tile unit  \
	-direction horizontal \
	-coordinate {{30.000 30.000} {99.760 99.120}} 

cut_row -all

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-area {{30.000 30.000} {99.760 32.880}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-flip_first_row \
	-area {{30.000 32.880} {99.760 35.760}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-area {{30.000 35.760} {99.760 38.640}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-flip_first_row \
	-area {{30.000 38.640} {99.760 41.520}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-area {{30.000 41.520} {99.760 44.400}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-flip_first_row \
	-area {{30.000 44.400} {99.760 47.280}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-area {{30.000 47.280} {99.760 50.160}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-flip_first_row \
	-area {{30.000 50.160} {99.760 53.040}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-area {{30.000 53.040} {99.760 55.920}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-flip_first_row \
	-area {{30.000 55.920} {99.760 58.800}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-area {{30.000 58.800} {99.760 61.680}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-flip_first_row \
	-area {{30.000 61.680} {99.760 64.560}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-area {{30.000 64.560} {99.760 67.440}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-flip_first_row \
	-area {{30.000 67.440} {99.760 70.320}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-area {{30.000 70.320} {99.760 73.200}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-flip_first_row \
	-area {{30.000 73.200} {99.760 76.080}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-area {{30.000 76.080} {99.760 78.960}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-flip_first_row \
	-area {{30.000 78.960} {99.760 81.840}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-area {{30.000 81.840} {99.760 84.720}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-flip_first_row \
	-area {{30.000 84.720} {99.760 87.600}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-area {{30.000 87.600} {99.760 90.480}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-flip_first_row \
	-area {{30.000 90.480} {99.760 93.360}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-area {{30.000 93.360} {99.760 96.240}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-no_snap_to_wire_track \
	-dont_snap_to_existing_row \
	-flip_first_row \
	-area {{30.000 96.240} {99.760 99.120}}

update_floorplan

remove_bounds -all



#***************

#  Pre Route  

#***************

remove_net_shape *
remove_via *
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 61.25}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 56.13}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 51.01}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 40.77}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 35.65}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 30.53}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 25.41}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 15.17}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 10.05}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 60.19}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 55.07}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 49.95}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 39.71}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 34.59}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 29.47}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 24.35}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 14.11}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 8.99}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 1.04 -route_type pg_ring -length 127.26 -origin {1.25 2.62}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 1.04 -route_type pg_ring -length 128.7 -origin {0.53 1.05}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 117.57}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 112.45}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 107.33}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 102.21}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 91.97}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 86.85}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 81.73}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 76.61}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 127.26 -origin {1.25 66.37}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 116.51}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 111.39}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 106.27}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 101.15}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 90.91}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 85.79}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 80.67}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 75.55}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 0.52 -route_type pg_strap -length 128.7 -origin {0.53 65.31}
create_net_shape -no_snap -type wire -net VSS -layer M9 -datatype 0 -path_type 0 -width 1.04 -route_type pg_ring -length 127.26 -origin {1.25 126.5}
create_net_shape -no_snap -type wire -net VDD -layer M9 -datatype 0 -path_type 0 -width 1.04 -route_type pg_ring -length 128.7 -origin {0.53 128.07}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {124.32 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {120.48 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {116.64 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {112.8 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {108.96 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {105.12 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {101.28 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {97.44 2.1}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {123.84 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {120 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {116.16 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {112.32 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {108.48 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {104.64 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {100.8 0.53}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.48 -route_type pg_ring -length 124.92 -origin {128.27 2.1}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.48 -route_type pg_ring -length 128.06 -origin {128.99 0.53}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {89.76 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {85.92 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {82.08 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {78.24 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {74.4 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {70.56 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {66.72 2.1}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {96.96 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {89.28 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {85.44 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {81.6 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {77.76 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {73.92 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {70.08 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {66.24 0.53}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {62.88 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {59.04 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {55.2 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {51.36 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {47.52 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {43.68 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {39.84 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {36 2.1}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {62.4 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {58.56 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {54.72 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {50.88 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {47.04 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {43.2 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {39.36 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {35.52 0.53}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {32.16 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {24.48 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {20.64 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {16.8 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {12.96 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {9.12 2.1}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 124.92 -origin {5.28 2.1}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {31.68 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {24 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {20.16 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {16.32 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {12.48 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {8.64 0.53}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.24 -route_type pg_strap -length 128.06 -origin {4.8 0.53}
create_net_shape -no_snap -type wire -vertical -net VSS -layer M8 -datatype 0 -path_type 0 -width 0.48 -route_type pg_ring -length 124.92 -origin {1.49 2.1}
create_net_shape -no_snap -type wire -vertical -net VDD -layer M8 -datatype 0 -path_type 0 -width 0.48 -route_type pg_ring -length 128.06 -origin {0.77 0.53}
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 30.53} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 25.41} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 15.17} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 10.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 29.47} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 24.35} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 14.11} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 8.99} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {123.84 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {120 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {116.16 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {112.32 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {108.48 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {104.64 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {100.8 1.05} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_ring -at {128.27 2.62} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_ring -at {128.99 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {96.96 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {89.28 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {85.44 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {81.6 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {77.76 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {73.92 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {70.08 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {66.24 1.05} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 61.25} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 56.13} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 51.01} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 40.77} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 35.65} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 60.19} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 55.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 49.95} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 39.71} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 34.59} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {62.4 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {58.56 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {54.72 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {50.88 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {47.04 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {43.2 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {39.36 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {35.52 1.05} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 30.53} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 25.41} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 15.17} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 10.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 29.47} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 24.35} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 14.11} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 8.99} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {31.68 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {24 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {20.16 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {16.32 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {12.48 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {8.64 1.05} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {4.8 1.05} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_ring -at {1.49 2.62} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_ring -at {0.77 1.05} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 61.25} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 56.13} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 51.01} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 40.77} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 35.65} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 60.19} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 55.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 49.95} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 39.71} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 34.59} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 91.97} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 86.85} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 81.73} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 76.61} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 66.37} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 90.91} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 85.79} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 80.67} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 75.55} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 65.31} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 117.57} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 112.45} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 107.33} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {128.27 102.21} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 116.51} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 111.39} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 106.27} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {128.99 101.15} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {123.84 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {120 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {116.16 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {112.32 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {108.48 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {104.64 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {100.8 128.07} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_ring -at {128.27 126.5} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_ring -at {128.99 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {96.96 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {89.28 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {85.44 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {81.6 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {77.76 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {73.92 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {70.08 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {66.24 128.07} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 91.97} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 86.85} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 81.73} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 76.61} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 66.37} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 90.91} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 85.79} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 80.67} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 75.55} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 65.31} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {62.4 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {58.56 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {54.72 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {50.88 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {47.04 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {43.2 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {39.36 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {35.52 128.07} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 117.57} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 112.45} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 107.33} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_strap -at {1.49 102.21} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 116.51} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 111.39} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 106.27} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {0.77 101.15} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {31.68 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {24 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {20.16 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {16.32 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {12.48 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {8.64 128.07} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_strap -at {4.8 128.07} -orient N
create_via -no_snap -type via -net VSS -master VIA89C -route_type pg_ring -at {1.49 126.5} -orient N
create_via -no_snap -type via -net VDD -master VIA89C -route_type pg_ring -at {0.77 128.07} -orient N


set_object_snap_type -enabled $oldSnapState
undo_config -enable
