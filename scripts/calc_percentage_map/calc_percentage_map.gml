///@param total
///@param percentageMap

var total = argument0
var percentageMap = argument1

var percentageKeys = map_get_key_array(percentageMap)
var percentageValues = map_get_value_array(percentageMap)

percentageValues = calc_percentage_array(total, percentageValues)
var results = array_to_map(percentageKeys, percentageValues, ds_map_create())

return results