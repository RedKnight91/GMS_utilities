///@param instance
///@param expected

var instance = argument0
var expected = argument1

var condition = instance_exists(instance)
var result = (condition == expected)
assert_with_error_message(result, "Instance " + __get_existence_message(condition), instance)