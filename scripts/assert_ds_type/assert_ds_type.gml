///@param ds_type

var ds_type = argument0

var condition = false

switch(ds_type) {
	case ds_type_list:
	case ds_type_map:
	case ds_type_grid:
	case ds_type_stack:
	case ds_type_queue:
	case ds_type_priority:
		var condition = true
}

assert_with_error_message(condition, "Not a ds_type", ds_type)