///@param index
///@param height

var index = argument0
var expectedHeight = argument1
var height = ds_grid_height(index)

var condition = (expectedHeight == height)
assert_with_error_message(condition, "ds_grid height does not match expectation", "Expected height:", expectedHeight, "Actual height:", height)