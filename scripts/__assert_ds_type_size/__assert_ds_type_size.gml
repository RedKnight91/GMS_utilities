///@param index
///@param ds_type
///@param size

var index = argument0
var ds_type = argument1
var expectedSize = argument2
var size = ds_type_size(index, ds_type)

var condition = (expectedSize == size)
assert_with_error_message(condition, ds_type_name(ds_type) + " size does not match expectation", "Expected size:", expectedSize, "Actual size:", size)