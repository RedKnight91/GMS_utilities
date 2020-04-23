///@param list

var list = argument0
var condition = list_exists(list)
assertWithErrorMessage(condition, "List does not exist", list)