///@param queue
///@param expected

var queue = argument0
var expected = argument1

var condition = queue_exists(queue)
var result = (condition == expected)
assertWithErrorMessage(result, "Queue " + getExistenceMessage(condition), queue)