///@param index
///@param ds_type

var index = argument[0]
var ds_type = argument[1]
var emptyValue = (argument_count == 3) ? argument[2] : 0

switch (ds_type) {
	case ds_type_list:		return ds_list_empty(index)
	case ds_type_map:		return ds_map_empty(index)
	case ds_type_grid:		return ds_grid_empty(index, emptyValue)
	case ds_type_stack:		return ds_stack_empty(index)
	case ds_type_queue:		return ds_queue_empty(index)
	case ds_type_priority:	return ds_priority_empty(index)
}