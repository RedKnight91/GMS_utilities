///@param grid
///@param steps
///@param topValues

var grid = argument0
var steps = argument1
var emptyValue = argument2

assert_greater_than(steps, 0, true)

var columns = ds_grid_width(grid) - 1
var rows = ds_grid_height(grid) - 1

ds_grid_set_grid_region(grid, grid, 0, 0, columns, rows, 0, steps)
ds_grid_set_region(grid, 0, 0, columns, steps - 1, emptyValue)