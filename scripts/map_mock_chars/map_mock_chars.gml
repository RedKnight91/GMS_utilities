///@param size

var size = argument0
var map = ds_map_create()

for (var i = 0; i < size; ++i) {
	var key = uuidv4_create()
	map[? key] = letter_random()
}

return map