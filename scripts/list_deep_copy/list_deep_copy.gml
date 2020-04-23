///@param list

var list = argument0
var helper_map = ds_map_create()

ds_map_add_list(helper_map, "default", list)
var map_copy = json_decode(json_encode(helper_map))
var list_copy = map_copy[? "default"] 

//Not removing the lists would also destroy them with the maps
ds_map_delete(helper_map, "default")
ds_map_destroy(helper_map)
ds_map_delete(map_copy, "default")
ds_map_destroy(map_copy)

return list_copy