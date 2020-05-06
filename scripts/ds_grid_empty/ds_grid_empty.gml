///@param id
///@param emptyValue

var grid = argument0
var emptyValue = argument1

var isEmpty = true

for (var col = 0; col < ds_grid_width(grid); col++) {
	for (var row = 0; row < ds_grid_height(grid); row++) {
		if (grid[# col, row] != emptyValue) {
			isEmpty = false
			break
		}
	}
}

return isEmpty