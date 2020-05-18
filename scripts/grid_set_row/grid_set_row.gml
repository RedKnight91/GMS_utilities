///@param grid
///@param row
///@param value

var grid = argument0
var row = argument1
var value = argument2

var width = ds_grid_width(grid)
ds_grid_set_region(grid, 0, row, width, row, value)