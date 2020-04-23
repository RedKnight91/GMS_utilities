///@param	key1
///@param	value1
///@param	key2
///@param	value2
///@param	...

var map = ds_map_create()
ds_map_clear(map)

for (var i = 0; i < argument_count; i += 2)
	ds_map_add(map, argument[i], argument[i + 1])

return map