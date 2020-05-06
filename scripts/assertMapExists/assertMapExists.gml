///@param map
///@param expected

var map = argument0
var expected = argument1

var condition = map_exists(map)
var result = (condition == expected)
assertWithErrorMessage(result, "Map " + getExistenceMessage(condition), map)