///@param list
///@param *indent

var list = argument[0]
var indent = (argument_count == 2) ? argument[1] : 2
var size = ds_list_size(list)

print("[")

for (var i = 0; i < size; i++) {
	var value = string(list[| i])
	print(string_repeat(" ", indent) + value + ",")
}

print("]")