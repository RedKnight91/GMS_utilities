///@param ds_priority
///@param size

var priority = argument0
var expectedSize = argument1
var size = ds_priority_size(priority)

var condition = (expectedSize == size)
assertWithErrorMessage(condition, "ds_priority size does not match expectation", "Expected size:", expectedSize, "Actual size:", size)