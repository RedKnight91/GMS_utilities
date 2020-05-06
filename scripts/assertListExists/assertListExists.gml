///@param list
///@param expected

var list = argument0
var expected = argument1

var condition = list_exists(list)
var result = (condition == expected)
assertWithErrorMessage(result, "List " + getExistenceMessage(condition), list)