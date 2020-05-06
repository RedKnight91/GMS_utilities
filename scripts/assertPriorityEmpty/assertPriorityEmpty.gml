///@param priority
///@param expected

var priority = argument0
var expected = argument1

assertPriorityExists(priority, true)

var condition = ds_priority_empty(priority)
var result = (condition == expected)
assertWithErrorMessage(result, "Priority " + getEmptinessMessage(condition), priority)