///@param ds_map
///@param size

var map = argument0
var expectedSize = argument1
var size = ds_map_size(map)

var condition = (expectedSize == size)
assertWithErrorMessage(condition, "ds_map size does not match expectation", "Expected size:", expectedSize, "Actual size:", size)