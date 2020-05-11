///@param scriptIndex
///@param expected

var script = argument0
var expected = argument1

var condition = is_real(script) && script_exists(script)
var result = (condition == expected)
assert_with_error_message(result, "Script index " + __get_existence_message(condition), script)