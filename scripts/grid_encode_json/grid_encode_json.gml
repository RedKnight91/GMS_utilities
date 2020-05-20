///@param grid

var grid = argument0

var width = ds_grid_width(grid)
var colLists = ds_list_create()

for (var col = 0; col < width; ++col) {
    var colList = grid_column_to_list(grid, col)
	ds_list_add_list(colLists, colList)
}

var json = list_encode_json(colLists)
ds_list_destroy(colLists)

return json