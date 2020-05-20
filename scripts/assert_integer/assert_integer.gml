///@param int
///@param *message

var int = argument[0]
var message = (ARG_N > 1) ? argument[1] : ""

var result = is_int32(int) || is_int64(int)

var error = "Not an int"
assert_with_error_message(result, message, error, int)