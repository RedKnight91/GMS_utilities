///@param count
///@param *message

var expectedCount = argument0
var message = (ARG_N > 1) ? argument[1] : ""

__assert_ds_type_count(expectedCount, ds_type_priority, message)