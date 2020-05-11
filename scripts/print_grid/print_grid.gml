///@param grid
///@param *indent

var grid = argument[0]
var indent = (argument_count == 2) ? argument[1] : 2
var width = ds_grid_width(grid)
var height = ds_grid_height(grid)

print("[")

for (var row = 0; row < height; row++) {
	var rowString = string_repeat(" ", indent) + "["
	
	for (var col = 0; col < width; col++) {
		var value = string(grid[# col, row])
		rowString += value + ", "
	}
	
	rowString += "]"
	print(rowString)
}

print("]")