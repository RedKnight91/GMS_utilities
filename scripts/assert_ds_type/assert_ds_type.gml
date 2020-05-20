///@param ds_type
///@param *message

var ds_type = argument[0]
var message = (ARG_N > 1) ? argument[1] : ""

var result = false

switch(ds_type) {
	case ds_type_list:
	case ds_type_map:
	case ds_type_grid:
	case ds_type_stack:
	case ds_type_queue:
	case ds_type_priority:
		var result = true
}

var error = "Not a ds_type"
assert_with_error_message(result, message, error, ds_type)