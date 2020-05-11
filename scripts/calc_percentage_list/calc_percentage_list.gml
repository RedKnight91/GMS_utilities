///@param total
///@param percentageList

var total = argument0
var percentageList = argument1

var percentages = list_to_array(percentageList)
percentages = calc_percentage_array(total, percentages)
var results = array_to_list(percentages, ds_list_create())

return results