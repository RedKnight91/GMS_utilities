///@param queue
///@param *reverse

var queue = argument[0]
var reverse = (ARG_N >= 2) ? argument[1] : false

var copy = ds_queue_create()
ds_queue_copy(copy, queue)
var list = ds_list_create()

while (!ds_queue_empty(copy))
	ds_list_add(list, ds_queue_dequeue(copy))

ds_queue_destroy(copy)

if (reverse)
	list = list_reverse(list)

return list