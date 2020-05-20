///@param json

var json = argument0

var map = json_decode(json)
var list = map[? "default"]

ds_map_delete(map, "default")
ds_map_destroy(map)

return list