///@param map
///@param key

var map = argument0
var key = argument1

var keyPrev = ds_map_find_previous(map, key)
if (is_undefined(keyPrev))
	keyPrev = ds_map_find_last(map)

return keyPrev