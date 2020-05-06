///@param total
///@param percentageList

var total = argument0
var percentageList = argument1

var percentages = list_to_array(percentageList)
percentages = calcPercentagesArray(total, percentages)
array_to_list(percentages, percentageList)

return percentageList