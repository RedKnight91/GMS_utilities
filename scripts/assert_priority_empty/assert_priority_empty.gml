///@param priority
///@param expected
///@param *message


var priority = argument[0]
var expected = argument[1]
var message	 = (ARG_N > 2) ? argument[2] : ""

__assert_ds_type_empty(priority, ds_type_priority, expected, message)