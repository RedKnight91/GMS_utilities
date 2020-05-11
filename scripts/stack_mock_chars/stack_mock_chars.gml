///@param size

var size = argument0
var stack = ds_stack_create()

for (var i = 0; i < size; ++i)
	ds_stack_push(stack, letter_random())

return stack