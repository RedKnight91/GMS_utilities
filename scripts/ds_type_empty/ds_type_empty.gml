///@param index
///@param ds_type

var index	= argument[0]
var ds_type	= argument[1]

assert_ds_type(ds_type)

switch (ds_type) {
	case ds_type_list:		return ds_list_empty(index)
	case ds_type_map:		return ds_map_empty(index)
	case ds_type_stack:		return ds_stack_empty(index)
	case ds_type_queue:		return ds_queue_empty(index)
	case ds_type_priority:	return ds_priority_empty(index)
	case ds_type_grid:
		show_error("Error: Can't check for empty ds_grid (grids are never empty) /nUse ds_grid_empty(grid) instead", true)
}