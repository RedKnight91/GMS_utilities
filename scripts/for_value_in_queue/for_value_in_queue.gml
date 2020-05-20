///@desc	Processes each entry of a ds_queue with a given script
///@param	ds_queue
///@param	preserveQueue
///@param	processorScript
///@param	*arg
///@param	*arg
///@param	*...

var queue = argument[0]
var preserve = argument[1]
var processor = script_get_index(argument[2])

if (!queue_exists(queue))
	exit

ARG_MAKE_ARRAY = argument[ARG_INDEX]
var args = array_trim(ARG_ARRAY, 2, 0)
//Leaving one extra param at array start to replace later

if (preserve) {
	var copy = ds_queue_create()
	ds_queue_copy(copy, queue)
	queue = copy
}

while (!ds_queue_empty(queue)) {
	var value = ds_queue_dequeue(queue)
	args[0] = value
	
	execute_arg_array(processor, args)
}