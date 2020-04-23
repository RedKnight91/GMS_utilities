///@param instance
///@param variable

var instance = argument0
var variable = argument1

var condition = instance_variable_exists(instance, variable)
assertWithErrorMessage(condition, "Instance Variable does not exist", instance, variable)