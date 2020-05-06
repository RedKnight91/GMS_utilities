///@param instance
///@param variable
///@param expected

var instance = argument0
var variable = argument1
var expected = argument2

var condition = instance_variable_exists(instance, variable)
var result = (condition == expected)
assertWithErrorMessage(result, "Instance Variable " + getExistenceMessage(condition), instance, variable)