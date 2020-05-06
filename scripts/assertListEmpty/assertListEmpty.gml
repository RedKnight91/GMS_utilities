///@param list
///@param expected

var list = argument0
var expected = argument1

assertListExists(list, true)

var condition = ds_list_empty(list)
var result = (condition == expected)
assertWithErrorMessage(result, "List " + getEmptinessMessage(condition), list)