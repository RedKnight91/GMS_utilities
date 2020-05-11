///@param size

var size = argument0
var list = ds_list_create()

for (var i = size - 1; i >= 0; --i)
	list[| i] = letter_random()

return list