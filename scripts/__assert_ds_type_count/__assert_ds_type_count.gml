///@param count
///@param ds_type
///@param *message

var expectedCount	= argument[0]
var ds_type			= argument[1]
var message = (ARG_N > 2) ? argument[2] : ""

var count = ds_count(ds_type)
var result = (expectedCount == count)

var error = ds_type_name(ds_type) + " count does not match expectation"
assert_with_error_message(result, message, error, "Expected count:", expectedCount, "Actual count:", count)