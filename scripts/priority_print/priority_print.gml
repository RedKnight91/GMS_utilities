///@param priority
///@param *indent

var priority = argument[0]
var indent = (argument_count == 2) ? argument[1] : 2
var size = ds_priority_size(priority)

var copy = ds_priority_create()
ds_priority_copy(copy, priority)

print("[")

repeat(size) {
	var value = string(ds_priority_delete_max(copy))
	print(string_repeat(" ", indent) + value + ",")
}

print("]")

ds_priority_destroy(copy)