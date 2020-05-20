///@param priority

var priority = argument0

var map = priority_to_map(priority)
var json = json_encode(map)

ds_map_destroy(map)

return json