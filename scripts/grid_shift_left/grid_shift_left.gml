///@param grid
///@param steps
///@param rightValues

var grid = argument0
var steps = argument1
var emptyValue = argument2

assert_greater_than(steps, 0, true)

var columns = ds_grid_width(grid) - 1
var rows = ds_grid_height(grid) - 1

ds_grid_set_grid_region(grid, grid, steps, 0, columns, rows, 0, 0)
ds_grid_set_region(grid, columns - (steps - 1), 0, columns, rows, emptyValue)