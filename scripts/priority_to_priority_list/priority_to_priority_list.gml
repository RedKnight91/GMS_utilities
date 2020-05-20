///@param priority
///@param deleteDuplicates

var priority = argument0
var deleteDuplicates = argument1

var copy = ds_priority_create()
ds_priority_copy(copy, priority)
var list = ds_list_create()

while (!ds_priority_empty(copy)) {
	var value = ds_priority_delete_max(copy)
	var index = ds_priority_find_priority(priority, value)
	
	ds_list_add(list, index)
}

ds_priority_destroy(copy)

if (deleteDuplicates)
	list_delete_duplicates(list)

return list