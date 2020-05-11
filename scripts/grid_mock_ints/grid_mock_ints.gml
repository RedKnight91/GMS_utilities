///@param width
///@param height
///@param rangeLower
///@param rangeUpper

var width = argument0
var height = argument1
var _min = argument2
var _max = argument3
var grid = ds_grid_create(width, height)

for (var i = 0; i < width; ++i)
	for (var j = 0; j < height; ++j)
		grid[# i, j] = irandom_range(_min, _max)

return grid