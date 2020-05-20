///@param grid
///@param expected
///@param *message

var grid	= argument[0]
var expected= argument[1]
var message	= (ARG_N > 2) ? argument[2] : ""

__assert_ds_type_exists(grid, ds_type_grid, expected, message)