///@desc	Processes each entry of a ds_list with a given script
///@param	ds_list
///@param	processorScript
///@param	*arg
///@param	*arg
///@param	*...

var list = argument[0]
var processor = script_get_index(argument[1])

if (!list_exists(list))
	exit

ARG_MAKE_ARRAY = argument[ARG_INDEX]
var args = ARG_ARRAY
//Leaving two extra params at array start to replace later

for (var i = 0; list_exists(list) && i < ds_list_size(list); i++) { 
	var value = list[| i]
	args[0] = value
	args[1] = i
	
	execute_arg_array(processor, args)
}
