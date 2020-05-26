///@param percentageMap

var percentages = argument0
var total = sum_map(percentages)

var key = map_first(percentages)

while (!is_undefined(key)) {
	percentages[? key] /= total
	
	key = map_next(percentages, key)
}

return percentages