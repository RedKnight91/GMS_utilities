///@param [percentage]

var percentages = argument0
var percentageN = array_length_1d(percentages)
var total = sumArray(percentages)

for (var i = 0; i < percentageN; i++)
	percentages[i] = percentages[i] / total

return percentages