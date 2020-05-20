///@param stack
///@param expected
///@param *message


var stack = argument0
var expected = argument1
var message = (ARG_N > 2) ? argument[2] : ""

__assert_ds_type_empty(stack, ds_type_stack, expected, message)