///@param grid1
///@param grid2

var grid1 = argument0
var grid2 = argument1

var width1 = ds_grid_width(grid1)
var width2 = ds_grid_width(grid2)
var height1 = ds_grid_height(grid1)
var height2 = ds_grid_height(grid2)

if ((width1 != width2) || (height1 != height2))
	return false
	
var equal = true

for (var i = 0; i < width1; i++) {
	for (var j = 0; j < height1; j++) {
		if (grid1[# i, j] != grid2[# i, j]) {
			equal = false
			break
		}
	}
}

return equal