///@desc Breaks the callstack into an array of [context, line] arrays

var stack = debug_get_callstack()
var length = array_length_1d(stack)

var newStack = [] 

//Start from 1 to exclude this script from the stack
for (var i = 1; i < length; ++i) {
	if (stack[i] == 0)
		break
	
	var split = string_split(stack[i], ":")
	var call = split[0]
	var line = split[1]
	
	//Get caller type
	call = string_split(call, "_")
	var type = call[0] + "_" + call[1]	//Cases: gml_Script, gml_Object, gml_Room
	var name = call[2]					//TODO: handle cases where name contains '_' separator
	
	//Logic:
	/*
		type gml_Script:	0+1: type, 2-end: name
		type gml_Object:	0+1: type, 2-(end - 2): name, end - 1: event, end: eventN //TODO verify
		type gml_Room:		0+1: type, 2-(end - 1): name, end: event
	*/
	
	switch (type) {
		case "gml_Object":	callArray = [type, name, call[3], call[4], line]	break
		case "gml_Room":	callArray = [type, name, call[3], call[4], line]	break
		default:			callArray = [type, name, line]						break
	}
	
	newStack[i - 1] = callArray
}

return newStack