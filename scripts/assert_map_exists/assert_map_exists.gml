///@param map
///@param expected
///@param *message

var map = argument0
var expected = argument1
var message = (ARG_N > 2) ? argument[2] : ""

__assert_ds_type_exists(map, ds_type_map, expected, message)