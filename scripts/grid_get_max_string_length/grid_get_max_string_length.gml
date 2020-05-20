///@param grid

var grid = argument0

var width = ds_grid_width(grid)
var height = ds_grid_height(grid)
var maxLength = 0

for (var col = 0; col < width; col++) {
	for (var row = 0; row < height; row++) {
		var value = string(grid[# col, row])
		maxLength = max(maxLength, string_length(value))
	}
}

return maxLength