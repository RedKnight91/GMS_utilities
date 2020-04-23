///@param ds_grid
///@param width
///@param height

var grid = argument0
var expectedWidth = argument1
var expectedHeight = argument2

var width = ds_grid_width(grid)
var height = ds_grid_height(grid)

var condition = (expectedWidth == width) && (expectedHeight == height)
assertWithErrorMessage(condition, "ds_grid size does not match expectation", "Expected width:", expectedWidth, "Actual width:", width, "Expected height:", expectedHeight, "Actual height:", height)