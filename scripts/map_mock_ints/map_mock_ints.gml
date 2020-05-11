///@param size
///@param rangeLower
///@param rangeUpper

var size = argument0
var _min = argument1
var _max = argument2
var map = ds_map_create()

for (var i = 0; i < size; ++i) {
	var key = uuid_generate()
	map[? key] = irandom_range(_min, _max)
}

return map