///@param	value1
///@param	value2
///@param	...

var list = ds_list_create()
ds_list_clear(list)

for (var i = 0; i < argument_count; i++)
	ds_list_add(list, argument[i])

return list