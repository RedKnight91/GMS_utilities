///@param bool
///@param *message

var boolean = argument[0]
var message = (ARG_N > 1) ? argument[1] : ""

var result = is_boolean(boolean)

var error = "Not a bool"
assert_with_error_message(result, message, error, boolean)