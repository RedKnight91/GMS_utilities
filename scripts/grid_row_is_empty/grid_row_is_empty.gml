///@param grid
///@param row
///@param emptyValue

var grid		= argument0
var row			= argument1
var emptyValue	= argument2
var width = ds_grid_width(grid)

var isEmpty = true

for (var col = 0; col < width; ++col) {
	if (grid[# col, row] != emptyValue) {
		isEmpty = false
		break
	}
}

return isEmpty