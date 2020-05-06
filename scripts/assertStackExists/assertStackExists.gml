///@param stack
///@param expected

var stack = argument0
var expected = argument1

var condition = stack_exists(stack)
var result = (condition == expected)
assertWithErrorMessage(result, "Stack " + getExistenceMessage(condition), stack)