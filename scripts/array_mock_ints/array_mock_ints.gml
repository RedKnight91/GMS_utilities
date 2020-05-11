///@param length
///@param rangeLower
///@param rangeUpper

var length = argument0
var _min = argument1
var _max = argument2
var array = array_create(length, undefined)

for (var i = 0; i < length; i++)
	array[i] = irandom_range(_min, _max)

return array