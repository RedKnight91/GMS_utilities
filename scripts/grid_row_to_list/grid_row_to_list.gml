///@param grid
///@param row

var grid = argument0
var row = argument1

var width = ds_grid_width(grid)
var list = ds_list_create()

for (var col = 0; col < width; ++col) {
	ds_list_add(list, grid[# col, row])
}

return list