///@param ds_list
///@param size

var list = argument0
var expectedSize = argument1
var size = ds_list_size(list)

var condition = (expectedSize == size)
assertWithErrorMessage(condition, "ds_list size does not match expectation", "Expected size:", expectedSize, "Actual size:", size)