///@param value
///@param value
///@param ...

var queue = ds_queue_create()

for (var i = 0; i < ARG_N; i++)
	ds_queue_enqueue(queue, argument[i])

return queue