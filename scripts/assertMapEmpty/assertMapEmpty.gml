///@param map
///@param expected

var map = argument0
var expected = argument1

assertMapExists(map, true)

var condition = ds_map_empty(map)
var result = (condition == expected)
assertWithErrorMessage(result, "Map " + getEmptinessMessage(condition), map)