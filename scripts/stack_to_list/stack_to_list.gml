///@param stack
///@param *reverse

var stack = argument[0]
var reverse = (ARG_N >= 2) ? argument[1] : false

var copy = ds_stack_create()
ds_stack_copy(copy, stack)
var list = ds_list_create()

while (!ds_stack_empty(copy))
	ds_list_add(list, ds_stack_pop(copy))
	
ds_stack_destroy(copy)

if (reverse)
	list = list_reverse(list)

return list