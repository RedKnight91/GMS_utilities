///@param	width
///@param	height
///@param	value

var width = argument0
var height = argument1
var value = argument2

assert_greater_than(width, 0, true)
assert_greater_than(height, 0, true)

var grid = ds_grid_create(width, height)
ds_grid_clear(grid, value)

return grid