///@param index
///@param width
///@param *message

var index			= argument[0]
var expectedWidth	= argument[1]
var message = (ARG_N > 2) ? argument[2] : ""

var width = ds_grid_width(index)
var result = (expectedWidth == width)

var error = "ds_grid width does not match expectation"
assert_with_error_message(result, message, error, "Expected width:", expectedWidth, "Actual width:", width)