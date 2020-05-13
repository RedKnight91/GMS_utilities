///@param value
///@param value
///@param expected

var value1 = argument0
var value2 = argument1
var expected = argument2

var condition = (value1 == value2)
var result = (condition == expected)

var error = string_fill("%% and %% are%% equal", "%%", value1, value2, ((expected) ? " not" : ""))
assert_with_error_message(result, error, value1, value2)