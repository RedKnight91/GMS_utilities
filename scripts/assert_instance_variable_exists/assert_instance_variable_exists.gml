///@param instance
///@param variable
///@param expected

var instance = argument0
var variable = argument1
var expected = argument2

var condition = instance_variable_exists(instance, variable)
var result = (condition == expected)
assert_with_error_message(result, "Instance Variable " + __get_existence_message(condition), instance, variable)