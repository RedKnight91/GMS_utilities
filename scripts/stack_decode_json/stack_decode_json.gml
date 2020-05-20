///@param json
///@param *reverse

var json = argument[0]
var reverse = (ARG_N >= 2) ? argument[1] : false

var list = list_decode_json(json)
var stack = list_to_stack(list, reverse)

ds_list_destroy(list)

return stack