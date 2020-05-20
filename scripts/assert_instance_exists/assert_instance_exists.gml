///@param instance
///@param expected
///@param *message

var instance = argument[0]
var expected = argument[1]
var message = (ARG_N > 2) ? argument[2] : ""

var condition = instance_exists(instance)
var result = (condition == expected)

var error = "Instance " + __get_existence_message(condition)
assert_with_error_message(result, message, error, instance)