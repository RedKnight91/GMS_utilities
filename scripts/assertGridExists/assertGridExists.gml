///@param grid
///@param expected

var grid = argument0
var expected = argument1

var condition = grid_exists(grid)
var result = (condition == expected)
assertWithErrorMessage(result, "Grid " + getExistenceMessage(condition), grid)