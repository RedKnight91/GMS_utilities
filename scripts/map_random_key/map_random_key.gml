///@param map

var map = argument0
var keys = map_get_key_list(map)
ds_list_shuffle(keys)

var key = keys[| 0]
ds_list_destroy(keys)

return key