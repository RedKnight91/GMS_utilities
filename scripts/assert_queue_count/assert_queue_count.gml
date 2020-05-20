///@param count
///@param *message

var expected = argument[0]
var message = (ARG_N > 1) ? argument[1] : ""

__assert_ds_type_count(expected, ds_type_queue, message)