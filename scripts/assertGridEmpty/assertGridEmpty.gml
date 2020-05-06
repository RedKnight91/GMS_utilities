///@param grid
///@param emptyValue
///@param expected

var grid = argument0
var emptyValue = argument1
var expected = argument2

assertGridExists(grid, true)

var condition = ds_grid_empty(grid, emptyValue)
var result = (condition == expected)
assertWithErrorMessage(result, "Grid " + getEmptinessMessage(condition), grid)