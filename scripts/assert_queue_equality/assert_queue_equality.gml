///@param index1
///@param index2
///@param expected
///@param *message

var index1	= argument[0]
var index2	= argument[1]
var expected= argument[2]
var message = (ARG_N > 3) ? argument[3] : ""

__assert_ds_type_equality(index1, index2, ds_type_queue, expected, message)