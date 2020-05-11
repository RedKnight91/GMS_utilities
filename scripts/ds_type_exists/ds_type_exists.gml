///@param index
///@param ds_type

var index = argument0
var ds_type = argument1

switch (ds_type) {
	case ds_type_list:		return list_exists(index)
	case ds_type_map:		return map_exists(index)
	case ds_type_grid:		return grid_exists(index)
	case ds_type_stack:		return stack_exists(index)
	case ds_type_queue:		return queue_exists(index)
	case ds_type_priority:	return priority_exists(index)
}