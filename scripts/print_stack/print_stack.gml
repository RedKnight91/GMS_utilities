///@param stack
///@param *indent

var stack = argument[0]
var indent = (argument_count == 2) ? argument[1] : 2
var size = ds_stack_size(stack)

var copy = ds_stack_create()
ds_stack_copy(copy, stack)

print("[")

repeat(size) {
	var value = string(ds_stack_pop(copy))
	print(string_repeat(" ", indent) + value + ",")
}

print("]")

ds_stack_destroy(copy)