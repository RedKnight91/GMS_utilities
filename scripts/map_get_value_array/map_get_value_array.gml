///@param map

var map = argument0
var values = array_create(ds_map_size(map), undefined)
var key = map_first(map)
var index = 0

while (!is_undefined(key)) {
	values[index++] = map[? key]
	key = map_next(map, key)
}

return values