///@param surface
///@param expected

var surface = argument0
var expected = argument1

var condition = surface_exists(surface)
var result = (condition == expected)
assertWithErrorMessage(result, "Surface " + getExistenceMessage(condition), surface)