///@param parentList
///@param list

var parentList = argument0
var list = argument1

if (!list_exists(list))
	show_error("Error: Trying to add an unexisting list to a list. List argument: " + string(list), true)

ds_list_add(parentList, list)
var listPos = ds_list_size(parentList) - 1
ds_list_mark_as_list(parentList, listPos)