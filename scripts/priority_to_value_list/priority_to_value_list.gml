///@param priority

var priority = argument0

var copy = ds_priority_create()
ds_priority_copy(copy, priority)
var list = ds_list_create()

while (!ds_priority_empty(copy)) {
	var value = ds_priority_delete_max(copy)
	ds_list_add(list, value)
}

ds_priority_destroy(copy)

return list