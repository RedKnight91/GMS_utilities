///@param variable
///@param expected
///@param *message

var variable = argument[0]
var expected = argument[1]
var message = (ARG_N > 2) ? argument[2] : ""

var condition = global_variable_exists(variable)
var result = (condition == expected)

var error = "Global Variable " + __get_existence_message(condition)
assert_with_error_message(result, message, error, variable)