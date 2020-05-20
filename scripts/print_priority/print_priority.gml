///@param priority
///@param *indent

var priority = argument[0]
var indent = (ARG_N >= 2) ? argument[1] : 2
var size = ds_priority_size(priority)

var copy = ds_priority_create()
ds_priority_copy(copy, priority)

print("[")

repeat(size) {
	var value = ds_priority_delete_max(copy)
	var index = string(ds_priority_find_priority(priority, value))
	value = string(value)
	
	print(string_repeat(" ", indent) + index + ": " + value + ",")
}

print("]")

ds_priority_destroy(copy)