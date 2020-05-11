///@param index
///@param type

var index = argument0
var type = argument1

assert_ds_type(type)

switch(type) {
	case ds_type_list:		ds_list_destroy(index)
	case ds_type_map:		ds_map_destroy(index)
	case ds_type_grid:		ds_grid_destroy(index)
	case ds_type_stack:		ds_stack_destroy(index)
	case ds_type_queue:		ds_queue_destroy(index)
	case ds_type_priority:	ds_priority_destroy(index)
}