///@param value
///@param value
///@param ...

var stack = ds_stack_create()

for (var i = 0; i < argument_count; i++)
	ds_stack_push(stack, argument[i])

return stack