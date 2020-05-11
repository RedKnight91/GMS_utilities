///@param size
///@param rangeLower
///@param rangeUpper

var size = argument0
var _min = argument1
var _max = argument2
var stack = ds_stack_create()

for (var i = 0; i < size; ++i)
	ds_stack_push(stack, irandom_range(_min, _max))

return stack