///@param priority
///@param expected

var priority = argument0
var expected = argument1

var condition = priority_exists(priority)
var result = (condition == expected)
assertWithErrorMessage(result, "Priority " + getExistenceMessage(condition), priority)