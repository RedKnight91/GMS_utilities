///@param size
///@param rangeLower
///@param rangeUpper

var size = argument0
var _min = argument1
var _max = argument2
var queue = ds_queue_create()

for (var i = 0; i < size; ++i)
	ds_queue_enqueue(queue, irandom_range(_min, _max))

return queue