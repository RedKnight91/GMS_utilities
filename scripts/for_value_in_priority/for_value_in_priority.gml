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
var args = array_trim(ARG_ARRAY, 2, 0)
//Leaving one extra param at array start to replace later

var values = priority_to_value_list(priority)
var size = ds_list_size(values)

for (var i = 0; i < size; i++) {
	var value = values[| i]
	args[0] = value
	
	execute_arg_array(processor, args)
}

ds_list_destroy(values)