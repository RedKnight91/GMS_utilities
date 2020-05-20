///@param queue

var queue = argument0

var list = queue_to_list(queue)
var json = list_encode_json(list)

ds_list_destroy(list)

return json