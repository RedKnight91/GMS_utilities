///@param grid
///@param col
///@param emptyValue

var grid		= argument0
var col			= argument1
var emptyValue	= argument2

if (grid_column_is_full(grid, col, emptyValue))
	return -1

var rows = ds_grid_height(grid)

do {
	var row = irandom(rows - 1)
}
until (grid[# col, row] == emptyValue)

return row