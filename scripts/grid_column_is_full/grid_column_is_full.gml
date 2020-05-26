///@param grid
///@param col
///@param emptyValue

var grid		= argument0
var col			= argument1
var emptyValue	= argument2
var height = ds_grid_height(grid)

var isFull = true

for (var row = 0; row < height; ++row) {
	if (grid[# col, row] == emptyValue) {
		isFull = false
		break
	}
}

return isFull