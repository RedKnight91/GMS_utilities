///@desc	Processes each entry of a ds_queue with a given script
///@param	ds_queue
///@param	processorScript
///@param	*arg
///@param	*arg
///@param	*...

var queue = argument[0]
var processor = script_get_index(argument[1])

if (!queue_exists(queue))
	exit

ARG_MAKE_ARRAY = argument[ARG_INDEX]
var args = array_trim(ARG_ARRAY, 1, 0)
//Leaving one extra param at array start to replace later

var i = 0
var size = ds_queue_size(queue)

repeat(size) {
	args[0] = i++
	
	execute_arg_array(processor, args)
}