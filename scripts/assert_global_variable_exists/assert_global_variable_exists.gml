///@param variable
///@param expected

var variable = argument0
var expected = argument1

var condition = global_variable_exists(variable)
var result = (condition == expected)
assert_with_error_message(result, "Global Variable " + __get_existence_message(condition), variable)