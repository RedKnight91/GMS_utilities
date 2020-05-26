///@param grid
///@param row

var grid = argument0
var row = ds_grid_height(grid) - 1

grid_delete_row(grid, row)

return grid