///@param	width
///@param	height
///@param	value

var width = argument0
var height = argument1
var value = argument2

var grid = ds_grid_create(width, height)
ds_grid_clear(grid, value)

return grid