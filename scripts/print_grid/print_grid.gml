///@param grid
///@param *indent
///@param *indices

var grid = argument[0]
var indent = (ARG_N >= 2) ? argument[1] : 2
var indices = (ARG_N >= 3) ? argument[2] : true

var width = ds_grid_width(grid)
var height = ds_grid_height(grid)

var cellChars = grid_get_max_string_length(grid) + 2

if (indices) {
	var maxIndex = "[" + string(width - 1) + "]"
	cellChars = max(cellChars, string_length(maxIndex))
	
	var rowString = string_repeat(" ", indent)
	
	for (var i = 0; i < width; i++) {
		var value = "[" + string(i) + "]"
		value = string_pad_right(value, " ", cellChars)
		
		rowString += value
	}
	
	print(rowString)
}

print("[")

for (var row = 0; row < height; row++) {
	var rowString = string_repeat(" ", indent) + "["
	
	for (var col = 0; col < width; col++) {
		var value = string(grid[# col, row]) + ", "
		value = string_pad_right(value, " ", cellChars)
		
		rowString += value
	}
	
	rowString += "]"
	
	if (indices)
		rowString += string_repeat(" ", indent) + "[" + string(row) + "]"
	
	print(rowString)
}

print("]")