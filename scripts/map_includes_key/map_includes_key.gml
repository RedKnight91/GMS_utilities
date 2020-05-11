///@param map
///@param key

var map = argument0
var searchKey = argument1
var included = false

if (!map_exists(map))
	show_error("Error: Searching a non-existent map. Map argument: " + string(map), true)
	
var key = map_first(map)
while (!is_undefined(key)) {
	if (searchKey == key) {
		included = true
		break
	}
	
	key = map_next(map, key)
}

return included