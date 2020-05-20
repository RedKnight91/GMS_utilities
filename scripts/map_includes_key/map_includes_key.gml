///@param map
///@param key

var map = argument0
var searchKey = argument1
var included = false

assert_map_exists(map, true, "Searching a non-existent map")
	
var key = map_first(map)
while (!is_undefined(key)) {
	if (searchKey == key) {
		included = true
		break
	}
	
	key = map_next(map, key)
}

return included