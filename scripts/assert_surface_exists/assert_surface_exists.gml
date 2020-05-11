///@param surface
///@param expected

var surface = argument0
var expected = argument1

var condition = surface_exists(surface)
var result = (condition == expected)
assert_with_error_message(result, "Surface " + __get_existence_message(condition), surface)