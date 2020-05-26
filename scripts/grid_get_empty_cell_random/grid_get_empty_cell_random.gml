///@param grid
///@param col
///@param emptyValue

var grid		= argument0
var col			= argument1
var emptyValue	= argument2

if (grid_is_full(grid, emptyValue))
	return -1

var columns = ds_grid_width(grid)
var rows = ds_grid_height(grid)

do {
	var col = irandom(columns - 1)
	var row = irandom(rows - 1)
}
until (grid[# col, row] == emptyValue)

return [col, row]