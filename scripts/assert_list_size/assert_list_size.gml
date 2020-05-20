///@param index
///@param size
///@param *message

var index	= argument[0]
var expected= argument[1]
var message = (ARG_N > 2) ? argument[2] : ""

__assert_ds_type_size(index, ds_type_list, expected, message)