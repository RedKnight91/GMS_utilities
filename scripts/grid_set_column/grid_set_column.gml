///@param grid
///@param column
///@param value

var grid = argument0
var col = argument1
var value = argument2

var height = ds_grid_height(grid)
ds_grid_set_region(grid, col, 0, col, height, value)