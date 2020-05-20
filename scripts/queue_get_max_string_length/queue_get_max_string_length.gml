///@param queue

var queue = argument0

var copy = ds_queue_create()
ds_queue_copy(copy, queue)

var maxLength = 0

var size = ds_queue_size(queue)
repeat(size) {
	var item = string(ds_queue_dequeue(copy))
	maxLength = max(maxLength, string_length(item))
}

ds_queue_destroy(copy)

return maxLength