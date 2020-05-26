///@param grid
///@param column

var grid = argument0
var col = ds_grid_width(grid) - 1

grid_delete_column(grid, col)

return grid