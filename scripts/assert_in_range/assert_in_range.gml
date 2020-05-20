///@param value
///@param min
///@param max
///@param expected
///@param *message

var value	= argument[0]
var _min	= argument[1]
var _max	= argument[2]
var expected= argument[3]
var message = (ARG_N > 4) ? argument[4] : ""

var condition = in_range(value, _min, _max)
var result = (condition == expected)

var error = string_fill("%% is%% in [%%, %%] range", "%%", value, ((expected) ? " not" : ""), _min, _max)
assert_with_error_message(result, message, error, value, _min, _max)