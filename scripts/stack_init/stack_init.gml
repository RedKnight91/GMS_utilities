///@param value
///@param value
///@param ...

var stack = ds_stack_create()

for (var i = 0; i < ARG_N; i++)
	ds_stack_push(stack, argument[i])

return stack