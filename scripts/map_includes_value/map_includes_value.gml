///@param map
///@param value

var map = argument0
var searchValue = argument1
var included = false

if (!map_exists(map))
	show_error("Error: Searching a non-existent map. Map argument: " + string(map), true)
	
var key = ds_map_find_first(map)
while (!is_undefined(key)) {
	var value = map[? key]
	if (searchValue == value) {
		included = true
		break
	}
	
	key = ds_map_find_next(map, key)
}

return included