///@param instance
///@param variable
///@param expected
///@param *message

var instance = argument[0]
var variable = argument[1]
var expected = argument[2]
var message = (ARG_N > 3) ? argument[3] : ""

var condition = instance_variable_exists(instance, variable)
var result = (condition == expected)

var error = "Instance Variable " + __get_existence_message(condition)
assert_with_error_message(result, message, error, instance, variable)