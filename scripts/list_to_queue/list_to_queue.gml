///@param list
///@param *reverse

var list = argument[0]
var reverse = (ARG_N >= 2) ? argument[1] : false

var queue = ds_queue_create()

if (reverse) {
	var copy = ds_list_create()
	ds_list_copy(copy, list)
	list_reverse(copy)
	list = copy
}

var size = ds_list_size(list)
for (var i = 0; i < size; i++)
	ds_queue_enqueue(queue, list[| i])

if (reverse)
	ds_list_destroy(list)

return queue