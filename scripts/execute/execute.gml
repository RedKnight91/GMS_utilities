///@param script
///@param arg0
///@param arg1
///@param ...

ARGUMENT_MAKE_ARRAY = argument[ARGUMENT_INDEX]

var argN = argument_count
if (argN == 0)
	show_error("Error: No script argument provided", true)

var script = ARGUMENT_ARRAY[0]
var args = array_trim(ARGUMENT_ARRAY, 1, 0)

execute_arg_array(script, args)