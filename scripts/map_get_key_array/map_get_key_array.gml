///@param map

var map = argument0
var keys = array_create(ds_map_size(map), undefined)
var key = map_first(map)
var index = 0

while (!is_undefined(key)) {
	keys[index++] = key
	key = map_next(map, key)
}

return keys