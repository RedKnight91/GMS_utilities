///@param parentList
///@param map

var parentList = argument0
var map = argument1

if (!map_exists(map))
	show_error("Error: Trying to add an unexisting map to a list. Map argument: " + string(map), true)

ds_list_add(parentList, map)
var mapPos = ds_list_size(parentList) - 1
ds_list_mark_as_map(parentList, mapPos)