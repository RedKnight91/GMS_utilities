///@param width
///@param height

var width = argument0
var height = argument1
var grid = ds_grid_create(width, height)

for (var i = 0; i < width; ++i)
	for (var j = 0; j < height; ++j)
		grid[# i, j] = letter_random()

return grid