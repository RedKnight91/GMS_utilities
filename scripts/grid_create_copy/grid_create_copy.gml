///@param grid
var grid = argument0

var width = ds_grid_width(grid)
var height = ds_grid_height(grid)

var copy = ds_grid_create(width, height)
ds_grid_copy(copy, grid)

return copy