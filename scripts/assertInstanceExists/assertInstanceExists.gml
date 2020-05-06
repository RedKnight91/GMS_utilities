///@param instance
///@param expected

var instance = argument0
var expected = argument1

var condition = instance_exists(instance)
var result = (condition == expected)
assertWithErrorMessage(result, "Instance " + getExistenceMessage(condition), instance)