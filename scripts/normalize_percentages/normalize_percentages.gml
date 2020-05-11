///@param percentage
///@param percentage
///@param ...

ARGUMENT_MAKE_ARRAY = argument[ARGUMENT_INDEX]

var percentages = ARGUMENT_ARRAY
var total = sum_array(percentages)

for (var i = 0; i < array_length_1d(percentages); i++)
	percentages[i] = percentages[i] / total

return percentages