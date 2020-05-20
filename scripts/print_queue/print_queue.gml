///@param queue
///@param *indent
///@param *indices

var queue = argument[0]
var indent = (ARG_N >= 2) ? argument[1] : 2
var indices = (ARG_N >= 3) ? argument[2] : true

var size = ds_queue_size(queue)

if (indices)
	var itemChars = queue_get_max_string_length(queue)

var copy = ds_queue_create()
ds_queue_copy(copy, queue)

print("[")

var i = 0
repeat(size) {
	var value = string(ds_queue_dequeue(copy)) + ","
	
	if (indices)
		value = string_pad_right(value, " ", itemChars + 1)
		
	var item = string_repeat(" ", indent) + value
	
	if (indices)
		item += string_repeat(" ", indent) + "[" + string(i++) + "]"
		
	print(item)
}

print("]")

ds_queue_destroy(copy)