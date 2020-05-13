///@param stack1
///@param stack2

var stack1 = argument0
var stack2 = argument1

var size1 = ds_stack_size(stack1)
var size2 = ds_stack_size(stack2)

if (size1 != size2)
	return false

var _stack1 = stack_create_copy(stack1)
var _stack2 = stack_create_copy(stack2)

var equal = true
while (!ds_stack_empty(_stack1)) {
	if (ds_stack_pop(_stack1) != ds_stack_pop(_stack2)) {
		equal = false
		break
	}
}

ds_stack_destroy(_stack1)
ds_stack_destroy(_stack2)

return equal