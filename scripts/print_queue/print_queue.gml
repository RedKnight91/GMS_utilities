///@param queue
///@param *indent

var queue = argument[0]
var indent = (ARG_N == 2) ? argument[1] : 2
var size = ds_queue_size(queue)

var copy = ds_queue_create()
ds_queue_copy(copy, queue)

print("[")

repeat(size) {
	var value = string(ds_queue_dequeue(copy))
	print(string_repeat(" ", indent) + value + ",")
}

print("]")

ds_queue_destroy(copy)