///@param id

var list = argument0
var size = ds_list_size(list)
var array = array_create(size)

for (var i = 0; i < size; i++)
	array[i] = list[| i]

return array