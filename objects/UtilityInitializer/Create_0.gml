//Use as follows:
//ARGUMENT_MAKE_ARRAY = argument[ARGUMENT_INDEX]
//var args = ARGUMENT_ARRAY

#macro ARGUMENT_ARRAY __argumentArray
#macro ARGUMENT_INDEX __argumentIndex
#macro ARGUMENT_MAKE_ARRAY\
	var __argumentArray = array_create(argument_count)\
	for (var __argumentIndex = 0; __argumentIndex < argument_count; __argumentIndex++)\
		__argumentArray[__argumentIndex]


#macro MAKE_SINGLETON\
	if (instance_number(object_index) > 1){\
		instance_destroy(id, false)\
		exit\
	}