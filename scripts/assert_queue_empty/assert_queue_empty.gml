///@param queue
///@param expected
///@param *message


var queue = argument0
var expected = argument1
var message = (ARG_N > 2) ? argument[2] : ""

__assert_ds_type_empty(queue, ds_type_queue, expected, message)