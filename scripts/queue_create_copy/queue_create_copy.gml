///@param queue
var queue = argument0

var copy = ds_queue_create()
ds_queue_copy(copy, queue)

return copy