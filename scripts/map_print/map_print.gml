///@param map
///@param *indent

var map = argument[0]
var indent = (argument_count == 2) ? argument[1] : 2

print("{")

var key = ds_map_find_first(map)

while (!is_undefined(key)) {
	var value = string(map[? key])
	print(string_repeat(" ", indent) + value + ",")
	
	key = ds_map_find_next(map, key)
}

print("}")