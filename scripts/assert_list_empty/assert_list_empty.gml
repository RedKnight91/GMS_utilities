///@param list
///@param expected
///@param *message


var list	= argument[0]
var expected= argument[1]
var message	= (ARG_N > 2) ? argument[2] : ""

__assert_ds_type_empty(list, ds_type_list, expected, message)