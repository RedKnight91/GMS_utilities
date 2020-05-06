///@param array
///@param *list

var array = argument[0]
var list = (argument_count == 2) ? argument[1] : ds_list_create()

var size = array_length_1d(array)
var list = ds_list_create()

for (var i = 0; i < size; i++)
	list[| i] = array[i]

return list