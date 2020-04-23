///@param queue

var queue = argument0

var condition = queue_exists(queue)
assertWithErrorMessage(condition, "Queue does not exist", queue)