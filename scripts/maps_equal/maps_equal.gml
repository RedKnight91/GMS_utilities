///@param map1
///@param map2

var map1 = argument0
var map2 = argument1

var size1 = ds_map_size(map1)
var size2 = ds_map_size(map2)
if (size1 != size2)
	return false
	
var keys1 = map_get_key_list(map1)
var keys2 = map_get_key_list(map2)
var sameKeys = lists_equal_unordered(keys1, keys2)
ds_list_destroy(keys1)
ds_list_destroy(keys2)
if (!sameKeys)
	return false

var equal = true

var key = map_first(map1)
while (!is_undefined(key)) {
	if (map1[? key] != map2[? key]) {
		equal = false
		break
	}
	
	key = map_next(map1, key)
}

return equal