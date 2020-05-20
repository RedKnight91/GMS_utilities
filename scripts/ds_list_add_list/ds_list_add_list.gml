///@param parentList
///@param list

var parentList = argument0
var list = argument1

assert_list_exists(list, true, "Trying to add a non-existent list to a list")

ds_list_add(parentList, list)
var listPos = ds_list_size(parentList) - 1
ds_list_mark_as_list(parentList, listPos)