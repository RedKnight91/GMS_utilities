///@param size

var size = argument0
var queue = ds_queue_create()

for (var i = 0; i < size; ++i)
	ds_queue_enqueue(queue, choose(true, false))

return queue