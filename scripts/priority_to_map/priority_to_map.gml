///@param priority
///@desc	Returns a map of lists
///			The map keys are the priorities, a list's items are values for that priority

var priority = argument0

var priorityMap = ds_map_create()
var copy = ds_priority_create()
ds_priority_copy(copy, priority)

while (!ds_priority_empty(copy)) {
	var value = ds_priority_find_max(copy)
	var index = ds_priority_find_priority(copy, value)
	var key = string(index)
	//Making index key a string otherwise json_encode/decode would create inconsistencies

	ds_priority_delete_max(copy)
	
	var priorityList = priorityMap[? key]
	if (!list_exists(priorityList)) {
		priorityList = ds_list_create()
		ds_map_add_list(priorityMap, key, priorityList)
	}
	
	ds_list_add(priorityList, value)
}

ds_priority_destroy(copy)

return priorityMap