///@param grid
///@param left
///@param top
///@param right
///@param bottom

var grid	= argument0
var left	= argument1
var top		= argument2
var right	= argument3
var bottom	= argument4

assert_greater_than(left, -1, true)
assert_greater_than(top, -1, true)
assert_greater_than(right, -1, true)
assert_greater_than(bottom, -1, true)

var width = ds_grid_width(grid)
var height = ds_grid_height(grid)
var widthFinal = max(0, width - left - right)
var heightFinal = max(0, height - top - bottom)

if (left > 0)
	grid_shift_left(grid, left, 0)

if (top > 0)
	grid_shift_up(grid, top, 0)

ds_grid_resize(grid, widthFinal, heightFinal)