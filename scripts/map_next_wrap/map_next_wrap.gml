///@param map
///@param key

var map = argument0
var key = argument1

var keyNext = map_next(map, key)
if (is_undefined(keyNext))
	keyNext = map_first(map)

return keyNext