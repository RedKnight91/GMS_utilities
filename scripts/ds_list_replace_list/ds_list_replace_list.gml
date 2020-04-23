///@param parentList
///@param index
///@param list
///@param destroyReplaced

var parentList = argument0
var index = argument1
var list = argument2
var destroyReplaced = argument3

if (destroyReplaced) {
	var listSize = ds_list_size(parentList)
	var oldList = (listSize >= index) ? parentList[| index] : -1

	list_destroy(oldList)
}

ds_list_replace(parentList, index, list)
ds_list_mark_as_list(parentList, index)