///@param value
///@param min
///@param max
///@param expected

var value = argument0
var _min = argument1
var _max = argument2
var expected = argument3

var condition = in_range(value, _min, _max)
var result = (condition == expected)

var error = string_fill("%% is%% in [%%, %%] range", "%%", value, ((expected) ? " not" : ""), _min, _max)
assert_with_error_message(result, error, value, _min, _max)