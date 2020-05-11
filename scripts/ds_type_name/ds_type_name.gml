///@param ds_type

var ds_type = argument0

assert_ds_type(ds_type)

switch (ds_type) {
	case ds_type_list:		return "ds_type_list"
	case ds_type_map:		return "ds_type_map"
	case ds_type_grid:		return "ds_type_grid"
	case ds_type_stack:		return "ds_type_stack"
	case ds_type_queue:		return "ds_type_queue"
	case ds_type_priority:	return "ds_type_priority"
}