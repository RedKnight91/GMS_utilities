///@param grid
///@param row
///@param emptyValue

var grid		= argument0
var row			= argument1
var emptyValue	= argument2

if (grid_row_is_full(grid, row, emptyValue))
	return -1

var columns = ds_grid_width(grid)

do {
	var col = irandom(columns - 1)
}
until (grid[# col, row] == emptyValue)

return col