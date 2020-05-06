///@param queue
///@param expected

var queue = argument0
var expected = argument1

assertQueueExists(queue, true)

var condition = ds_queue_empty(queue)
var result = (condition == expected)
assertWithErrorMessage(result, "Queue " + getEmptinessMessage(condition), queue)