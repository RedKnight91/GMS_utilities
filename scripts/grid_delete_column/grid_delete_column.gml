///@param grid
///@param column

var grid = argument0
var col = argument1

var columns = ds_grid_width(grid)
var rows = ds_grid_height(grid)

if (col >= columns)
	return grid

ds_grid_set_grid_region(grid, grid, col + 1, 0, columns - 1, rows - 1, col, 0)
ds_grid_resize(grid, columns - 1, rows)

return grid