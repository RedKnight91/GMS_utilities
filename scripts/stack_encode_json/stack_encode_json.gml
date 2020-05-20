///@param stack

var stack = argument0

var list = stack_to_list(stack)
var json = list_encode_json(list)

ds_list_destroy(list)

return json