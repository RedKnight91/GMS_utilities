///@param grid
///@param row

var grid = argument0
var row = argument1

var columns = ds_grid_width(grid)
var rows = ds_grid_height(grid)

if (row >= rows)
	return grid

ds_grid_set_grid_region(grid, grid, 0, row + 1, columns - 1, rows - 1, 0, row)
ds_grid_resize(grid, columns, rows - 1)

return grid