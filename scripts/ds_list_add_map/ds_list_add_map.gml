///@param parentList
///@param map

var parentList = argument0
var map = argument1

assert_map_exists(map, true, "Trying to add a non-existent map to a list.")

ds_list_add(parentList, map)
var mapPos = ds_list_size(parentList) - 1
ds_list_mark_as_map(parentList, mapPos)