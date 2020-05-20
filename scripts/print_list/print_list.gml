///@param list
///@param *indent
///@param *indices

var list = argument[0]
var indent = (ARG_N >= 2) ? argument[1] : 2
var indices = (ARG_N >= 3) ? argument[2] : true

var size = ds_list_size(list)

if (indices)
	var itemChars = list_get_max_string_length(list)

print("[")

for (var i = 0; i < size; i++) {
	var value = string(list[| i]) + ","
	
	if (indices)
		value = string_pad_right(value, " ", itemChars + 1)
	
	var item = string_repeat(" ", indent) + value
	
	if (indices)
		item += string_repeat(" ", indent) + "[" + string(i) + "]"
	
	print(item)
}

print("]")