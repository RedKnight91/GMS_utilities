///@param stack
///@param *indent
///@param *indices

var stack = argument[0]
var indent = (ARG_N >= 2) ? argument[1] : 2
var indices = (ARG_N >= 3) ? argument[2] : true

var size = ds_stack_size(stack)

if (indices)
	var itemChars = stack_get_max_string_length(stack)

var copy = ds_stack_create()
ds_stack_copy(copy, stack)

print("[")

var i = 0
repeat(size) {
	var value = string(ds_stack_pop(copy)) + ","
	
	if (indices)
		value = string_pad_right(value, " ", itemChars + 1)
		
	var item = string_repeat(" ", indent) + value
	
	if (indices)
		item += string_repeat(" ", indent) + "[" + string(i++) + "]"
		
	print(item)
}

print("]")

ds_stack_destroy(copy)