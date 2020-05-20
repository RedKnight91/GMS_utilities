///@param string
///@param *message

var str		= argument[0]
var message = (ARG_N > 1) ? argument[1] : ""

var result = is_string(str)

var error = "Not a string"
assert_with_error_message(result, message, error, str)