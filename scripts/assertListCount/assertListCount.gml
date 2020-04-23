///@param count

var expectedCount = argument0
var count = ds_count(ds_type_list)

var condition = (expectedCount == count)
assertWithErrorMessage(condition, "ds_list count does not match expectation", "Expected count:", expectedCount, "Actual count:", count)