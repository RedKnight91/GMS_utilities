///@param real
///@param *message

var num		= argument[0]
var message = (ARG_N > 1) ? argument[1] : ""

var result = is_real(num)

var error = "Not a real"
assert_with_error_message(result, message, error, num)