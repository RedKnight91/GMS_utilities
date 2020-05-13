///@param script
///@param arg0
///@param arg1
///@param ...

ARG_MAKE_ARRAY = argument[ARG_INDEX]

var argN = ARG_N
if (argN == 0)
	show_error("Error: No script argument provided", true)

var script = ARG_ARRAY[0]
var args = array_trim(ARG_ARRAY, 1, 0)

execute_arg_array(script, args)