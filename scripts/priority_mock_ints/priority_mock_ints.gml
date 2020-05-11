///@param size
///@param rangeLower
///@param rangeUpper

var size = argument0
var _min = argument1
var _max = argument2
var priority = ds_priority_create()

for (var i = 0; i < size; ++i)
	ds_priority_add(priority, irandom_range(_min, _max), irandom(10))

return priority