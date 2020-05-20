///@param map
///@param value

var map = argument0
var searchValue = argument1
var included = false

assert_map_exists(map, true, "Searching a non-existent map.")
	
var key = map_first(map)
while (!is_undefined(key)) {
	var value = map[? key]
	if (searchValue == value) {
		included = true
		break
	}
	
	key = map_next(map, key)
}

return included