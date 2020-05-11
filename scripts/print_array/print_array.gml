///@param array
///@param *indent

var array = argument[0]
var indent = (argument_count == 2) ? argument[1] : 2
var size = array_length_1d(array)

print("[")

for (var i = 0; i < size; i++) {
	var value = string(array[ i])
	print(string_repeat(" ", indent) + value + ",")
}

print("]")