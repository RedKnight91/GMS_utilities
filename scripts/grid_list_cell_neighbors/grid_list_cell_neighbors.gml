///@param grid
///@param col
///@param row

var grid = argument0
var baseCol	 = argument1
var baseRow	 = argument2

var columns = ds_grid_width(grid)
var rows = ds_grid_height(grid)

var neighbors = ds_list_create()

for (var i = -1; i < 2; ++i) {
    for (var j = -1; j < 2; ++j) {
		var sameCell = (i == 0 && j == 0)
		if (sameCell)
			continue
			
	    var col = baseCol + i
		var row = baseRow + j
		
		var outOfWidth = (col < 0 || col >= columns)
		var outOfHeight = (row < 0 || row >= rows)
		if (outOfWidth || outOfHeight)
			continue
		
		var neighborValue = grid[# col, row]
		ds_list_add(neighbors, neighborValue)
	}
}

return neighbors