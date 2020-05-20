///@param array
///@param *message

var array = argument[0]
var message = (ARG_N > 1) ? argument[1] : ""

var result = is_array(array)

var error = "Not an array"
assert_with_error_message(result, message, error, array)