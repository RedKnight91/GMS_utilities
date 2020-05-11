///@param size
///@param rangeLower
///@param rangeUpper

var size = argument0
var _min = argument1
var _max = argument2
var list = ds_list_create()

for (var i = size - 1; i >= 0; --i)
	list[| i] = irandom_range(_min, _max)

return list