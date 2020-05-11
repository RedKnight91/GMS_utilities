///@param index
///@param width

var index = argument0
var expectedWidth = argument1
var width = ds_grid_width(index)

var condition = (expectedWidth == width)
assert_with_error_message(condition, "ds_grid width does not match expectation", "Expected width:", expectedWidth, "Actual width:", width)