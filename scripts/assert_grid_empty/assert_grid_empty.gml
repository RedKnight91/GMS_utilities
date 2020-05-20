///@param grid
///@param emptyValue
///@param expected
///@param *message


var grid = argument0
var emptyValue = argument1
var expected = argument2
var message = (ARG_N > 3) ? argument[3] : ""

__assert_ds_type_empty(grid, ds_type_grid, expected, emptyValue, message)