///@param index
///@param height
///@param *message

var index			= argument[0]
var expectedHeight	= argument[1]
var message = (ARG_N > 2) ? argument[2] : ""

var height = ds_grid_height(index)
var result = (expectedHeight == height)

var error = "ds_grid height does not match expectation"
assert_with_error_message(result, message, error, "Expected height:", expectedHeight, "Actual height:", height)