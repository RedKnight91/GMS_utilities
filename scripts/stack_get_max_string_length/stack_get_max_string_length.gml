///@param stack

var stack = argument0

var copy = ds_stack_create()
ds_stack_copy(copy, stack)

var maxLength = 0

var size = ds_stack_size(stack)
repeat(size) {
	var item = string(ds_stack_pop(copy))
	maxLength = max(maxLength, string_length(item))
}

ds_stack_destroy(copy)

return maxLength