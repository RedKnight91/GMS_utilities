///@param numMap

var map = argument0
var key = map_first(map)
var total = 0

while (!is_undefined(key)) {
	total += map[? key]
	key = map_next(map, key)
}

return total