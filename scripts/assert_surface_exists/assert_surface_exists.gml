///@param surface
///@param expected
///@param *message

var surface	= argument[0]
var expected= argument[1]
var message = (ARG_N > 2) ? argument[2] : ""

var condition = surface_exists(surface)
var result = (condition == expected)

var error = "Surface " + __get_existence_message(condition)
assert_with_error_message(result, message, error, surface)