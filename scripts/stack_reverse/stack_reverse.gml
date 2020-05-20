///@param stack

var stack = argument0

var list = stack_to_list(stack, true)
stack = list_to_stack(list, false)

ds_list_destroy(list)

return stack