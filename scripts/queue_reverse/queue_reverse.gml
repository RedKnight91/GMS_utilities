///@param queue

var queue = argument0

var list = queue_to_list(queue, true)
queue = list_to_queue(list, false)

ds_list_destroy(list)

return queue