///@param map

var map = argument0
var keys = ds_list_create()
var key = ds_map_find_first(map)

while (!is_undefined(key)) {
	ds_list_add(keys, key)
	key = ds_map_find_next(map, key)
}

return keys