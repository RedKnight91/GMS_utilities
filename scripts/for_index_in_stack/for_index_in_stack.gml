///@desc	Processes each entry of a ds_stack with a given script
///@param	ds_stack
///@param	processorScript
///@param	*arg
///@param	*arg
///@param	*...

var stack = argument[0]
var processor = script_get_index(argument[1])

if (!stack_exists(stack))
	exit

ARG_MAKE_ARRAY = argument[ARG_INDEX]
var args = array_trim(ARG_ARRAY, 1, 0)
//Leaving one extra param at array start to replace later

var i = 0
var size = ds_stack_size(stack)

repeat(size) {
	args[0] = i++
	
	execute_arg_array(processor, args)
}