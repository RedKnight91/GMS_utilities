///@param ds_stack
///@param size

var stack = argument0
var expectedSize = argument1
var size = ds_stack_size(stack)

var condition = (expectedSize == size)
assertWithErrorMessage(condition, "ds_stack size does not match expectation", "Expected size:", expectedSize, "Actual size:", size)