///@param index1
///@param index2
///@param ds_type

var index1	 = argument0
var index2	 = argument1
var ds_type	 = argument2

switch(ds_type) {
	case ds_type_list:		return lists_equal(index1, index2)
	case ds_type_map:		return maps_equal(index1, index2)
	case ds_type_grid:		return grids_equal(index1, index2)
	case ds_type_stack:		return stacks_equal(index1, index2)
	case ds_type_queue:		return queues_equal(index1, index2)
	case ds_type_priority:	return priorities_equal(index1, index2)
}