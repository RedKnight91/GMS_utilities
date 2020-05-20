///@param json
///@param *reverse

var json = argument[0]
var reverse = (ARG_N >= 2) ? argument[1] : false

var list = list_decode_json(json)
var queue = list_to_queue(list, reverse)

ds_list_destroy(list)

return queue