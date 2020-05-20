///@param valueList
///@param priorityList

var valueList = argument0
var priorityList = argument1

assert_list_size(valueList, ds_list_size(priorityList), "Lists are not matching in size")

var priority = ds_priority_create()

var size = ds_list_size(valueList)
for (var i = 0; i < size; ++i)
	ds_priority_add(priority, valueList[| i], priorityList[| i])

return priority