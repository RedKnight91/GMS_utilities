///@param array
///@param *list

var array = argument[0]
var list = (ARG_N == 2) ? argument[1] : ds_list_create()

var size = array_length_1d(array)

for (var i = 0; i < size; i++)
	list[| i] = array[i]

return list