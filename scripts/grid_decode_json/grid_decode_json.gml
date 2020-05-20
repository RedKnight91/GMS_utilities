///@param json

var json = argument0

var colLists = list_decode_json(json)

var columns = ds_list_size(colLists)
var rows = (columns > 0) ? ds_list_size(colLists[| 0]) : 0

var grid = ds_grid_create(columns, rows)

//Fill grid cells
for (var col = 0; col < columns; ++col) {
	var colList = colLists[| col]
	
	for (var row = 0; row < rows; ++row)
		grid[# col, row] = colList[| row]
	
	ds_list_destroy(colList)
}

ds_list_destroy(colLists)

return grid