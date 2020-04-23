///@desc	Processes each entry of a ds_list with a given script
///@param	ds_list
///@param	processorScript
///@param	[param1]
///@param	[param2]
///@param	[...]

var list = argument[0]
var processor = script_get_index(argument[1])

if (!list_exists(list))
	exit

ARGUMENT_MAKE_ARRAY = argument[ARGUMENT_INDEX]
var args = ARGUMENT_ARRAY
//Leaving two extra params at array start to replace later

for (var i = 0; list_exists(list) && i < ds_list_size(list); i++) { 
	var value = list[| i]
	args[0] = i
	args[1] = value
	
	execute_arg_array(processor, args)
}