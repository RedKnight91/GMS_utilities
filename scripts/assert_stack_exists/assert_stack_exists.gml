///@param stack
///@param expected
///@param *message

var stack	= argument[0]
var expected= argument[1]
var message = (ARG_N > 2) ? argument[2] : ""

__assert_ds_type_exists(stack, ds_type_stack, expected, message)