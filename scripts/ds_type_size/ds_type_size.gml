///@param index
///@param ds_type

var index = argument[0]
var ds_type = argument[1]

assert_ds_type(ds_type)

switch (ds_type) {
	case ds_type_list:		return ds_list_size(index)
	case ds_type_map:		return ds_map_size(index)
	case ds_type_stack:		return ds_stack_size(index)
	case ds_type_queue:		return ds_queue_size(index)
	case ds_type_priority:	return ds_priority_size(index)
	case ds_type_grid:
		show_error("Error: ds_grid has no size attribute", true)
}