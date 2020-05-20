///@param list

var list = argument0

var reverse = ds_list_create()
var size = ds_list_size(list)

for (var i = size - 1; i >= 0; --i)
	ds_list_add(reverse, list[| i])

ds_list_copy(list, reverse)
ds_list_destroy(reverse)

return list