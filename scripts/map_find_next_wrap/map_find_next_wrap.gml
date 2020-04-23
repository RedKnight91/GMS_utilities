///@param map
///@param key

var map = argument0
var key = argument1

var keyNext = ds_map_find_next(map, key)
if (is_undefined(keyNext))
	keyNext = ds_map_find_first(map)

return keyNext