///@param count

var expectedCount = argument0
var count = ds_count(ds_type_queue)

var condition = (expectedCount == count)
assertWithErrorMessage(condition, "ds_queue count does not match expectation", "Expected count:", expectedCount, "Actual count:", count)