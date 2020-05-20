///@param script
///@param arg0
///@param arg1
///@param ...

ARG_MAKE_ARRAY = argument[ARG_INDEX]

assert_greater_than(ARG_N, 0, true, "No script argument provided")

var script = ARG_ARRAY[0]
var args = array_trim(ARG_ARRAY, 1, 0)

execute_arg_array(script, args)