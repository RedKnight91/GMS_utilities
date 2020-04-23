///@param parentList
///@param index
///@param map
///@param destroyReplaced

var parentList = argument0
var index = argument1
var map = argument2
var destroyReplaced = argument3

if (destroyReplaced) {
	var listSize = ds_list_size(parentList)
	var oldMap = (listSize >= index) ? parentList[| index] : -1

	map_destroy(oldMap)
}

ds_list_replace(parentList, index, map)
ds_list_mark_as_map(parentList, index)