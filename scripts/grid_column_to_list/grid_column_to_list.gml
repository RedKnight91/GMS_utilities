///@param grid
///@param column

var grid = argument0
var col = argument1

var height = ds_grid_height(grid)
var list = ds_list_create()

for (var row = 0; row < height; ++row) {
	ds_list_add(list, grid[# col, row])
}

return list