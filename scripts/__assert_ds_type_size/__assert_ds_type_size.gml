///@param index
///@param ds_type
///@param size
///@param *message

var index		= argument[0]
var ds_type		= argument[1]
var expectedSize= argument[2]
var message = (ARG_N > 3) ? argument[3] : ""

var size = ds_type_size(index, ds_type)
var result = (expectedSize == size)

var error = ds_type_name(ds_type) + " size does not match expectation"
assert_with_error_message(result, message, error, "Expected size:", expectedSize, "Actual size:", size)