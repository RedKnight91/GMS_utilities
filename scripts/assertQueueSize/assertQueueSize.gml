///@param ds_queue
///@param size

var queue = argument0
var expectedSize = argument1
var size = ds_queue_size(queue)

var condition = (expectedSize == size)
assertWithErrorMessage(condition, "ds_queue size does not match expectation", "Expected size:", expectedSize, "Actual size:", size)