///@param stack
///@param expected

var stack = argument0
var expected = argument1

assertStackExists(stack, true)

var condition = ds_stack_empty(stack)
var result = (condition == expected)
assertWithErrorMessage(result, "Stack " + getEmptinessMessage(condition), stack)