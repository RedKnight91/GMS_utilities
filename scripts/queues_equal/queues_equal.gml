///@param queue1
///@param queue2

var queue1 = argument0
var queue2 = argument1

var size1 = ds_queue_size(queue1)
var size2 = ds_queue_size(queue2)

if (size1 != size2)
	return false


var _queue1 = queue_create_copy(queue1)
var _queue2 = queue_create_copy(queue2)

var equal = true
while (!ds_queue_empty(_queue1)) {
	if (ds_queue_dequeue(_queue1) != ds_queue_dequeue(_queue2)) {
		equal = false
		break
	}
}

ds_queue_destroy(_queue1)
ds_queue_destroy(_queue2)

return equal