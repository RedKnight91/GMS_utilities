///@param json

var json = argument0

var priority = ds_priority_create()

var map = json_decode(json)
var key = map_first(map)
while (!is_undefined(key)) {
	var values = map[? key]
	var valueN = ds_list_size(values)
	var index = real(key)
	
	for (var i = 0; i < valueN; ++i)
		ds_priority_add(priority, values[| i], index)
		
	key = map_next(map, key)
}

ds_map_destroy(map)

return priority