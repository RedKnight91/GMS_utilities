///@param grid
///@param left
///@param top
///@param right
///@param bottom
///@param *emptyValue

var grid	= argument[0]
var left	= argument[1]
var top		= argument[2]
var right	= argument[3]
var bottom	= argument[4]
var emptyValue	= (argument_count == 6) ? argument[5] : undefined

assert_greater_than(left, -1, true)
assert_greater_than(top, -1, true)
assert_greater_than(right, -1, true)
assert_greater_than(bottom, -1, true)

var width = ds_grid_width(grid)
var height = ds_grid_height(grid)
var widthFinal = width + left + right
var heightFinal = height + top + bottom

//Resize BEFORE shifting to preserve right cols, bottom rows
ds_grid_resize(grid, widthFinal, heightFinal)

if (left > 0)
	grid_shift_right(grid, left, emptyValue)

if (top > 0)
	grid_shift_down(grid, top, emptyValue)

//Fill right
ds_grid_set_region(grid, widthFinal - right, 0, widthFinal, heightFinal, emptyValue)

//Fill bottom
ds_grid_set_region(grid, 0, heightFinal - bottom, widthFinal, heightFinal, emptyValue)