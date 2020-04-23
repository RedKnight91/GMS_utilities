///@param ds_type

var dsType = argument0

var condition = false

switch(dsType) {
	case ds_type_list:
	case ds_type_map:
	case ds_type_grid:
	case ds_type_stack:
	case ds_type_queue:
	case ds_type_priority:
		var condition = true
}

assertWithErrorMessage(condition, "Not a ds_type", dsType)