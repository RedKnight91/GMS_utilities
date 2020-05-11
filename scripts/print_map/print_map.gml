///@param map
///@param *indent

var map = argument[0]
var indent = (argument_count == 2) ? argument[1] : 2

print("{")

var key = map_first(map)

while (!is_undefined(key)) {
	var value = string(map[? key])
	print(string_repeat(" ", indent) + key + ": " + value + ",")
	
	key = map_next(map, key)
}

print("}")