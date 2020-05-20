///@param list

var list = argument0

var maxLength = 0

var size = ds_list_size(list)
for (var i = 0; i < size; i++) {
	var item = string(list[| i])
	maxLength = max(maxLength, string_length(item))
}

return maxLength