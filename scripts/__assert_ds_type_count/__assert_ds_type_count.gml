///@param count
///@param ds_type

var expectedCount = argument0
var ds_type = argument1

var count = ds_count(ds_type)
var condition = (expectedCount == count)

assert_with_error_message(condition, ds_type_name(ds_type) + " count does not match expectation", "Expected count:", expectedCount, "Actual count:", count)