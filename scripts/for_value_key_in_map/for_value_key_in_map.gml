///@desc	Processes each entry of a ds_map with a given script
///@param	ds_map
///@param	processorScript
///@param	*arg
///@param	*arg
///@param	*...

var map = argument[0]
var processor = script_get_index(argument[1])

if (!map_exists(map))
	exit

ARG_MAKE_ARRAY = argument[ARG_INDEX]
var args = ARG_ARRAY
//Leaving two extra params at array start to replace later

var key = map_first(map)

while (map_exists(map) && !is_undefined(key)) {
	var value = map[? key]
	args[0] = value
	args[1] = key

	key = map_next(map, key)	
	
	execute_arg_array(processor, args)
}