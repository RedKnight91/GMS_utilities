///@desc	Processes each entry of a ds_priority with a given script
///@param	ds_priority
///@param	processorScript
///@param	*arg
///@param	*arg
///@param	*...

var priority = argument[0]
var processor = script_get_index(argument[1])

if (!priority_exists(priority))
	exit

ARG_MAKE_ARRAY = argument[ARG_INDEX]
var args = array_trim(ARG_ARRAY, 1, 0)
//Leaving one extra param at array start to replace later

var priorities = priority_to_priority_list(priority, true)
var size = ds_list_size(priorities)

for (var i = 0; i < size; i++) {
	args[0] = priorities[| i]
	
	execute_arg_array(processor, args)
}

ds_list_destroy(priorities)