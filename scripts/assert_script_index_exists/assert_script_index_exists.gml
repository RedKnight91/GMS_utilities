///@param scriptIndex
///@param expected
///@param *message

var script	= argument[0]
var expected= argument[1]
var message = (ARG_N > 2) ? argument[2] : ""

var condition = is_real(script) && script_exists(script)
var result = (condition == expected)

var error = "Script index " + __get_existence_message(condition)
assert_with_error_message(result, message, error, script)