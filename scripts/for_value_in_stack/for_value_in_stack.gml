///@desc	Processes each entry of a ds_stack with a given script
///@param	ds_stack
///@param	preserveStack
///@param	processorScript
///@param	*arg
///@param	*arg
///@param	*...

var stack = argument[0]
var preserve = argument[1]
var processor = script_get_index(argument[2])

if (!stack_exists(stack))
	exit

ARG_MAKE_ARRAY = argument[ARG_INDEX]
var args = array_trim(ARG_ARRAY, 2, 0)
//Leaving one extra param at array start to replace later

if (preserve) {
	var copy = ds_stack_create()
	ds_stack_copy(copy, stack)
	stack = copy
}

while (!ds_stack_empty(stack)) {
	var value = ds_stack_pop(stack)
	args[0] = value
	
	execute_arg_array(processor, args)
}