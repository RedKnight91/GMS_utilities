///@param percentage
///@param percentage
///@param ...

ARG_MAKE_ARRAY = argument[ARG_INDEX]

var percentages = ARG_ARRAY
var total = sum_array(percentages)

for (var i = 0; i < array_length_1d(percentages); i++)
	percentages[i] = percentages[i] / total

return percentages