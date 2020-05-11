/// @description uuid_array_implode()

var uuidArray = argument0

var uuid = ""
var sep = "-"

uuid  = __uuid_segment_stringify(uuidArray, 0,	8)	+ sep	//Integer giving the low 32 bits of the time
uuid += __uuid_segment_stringify(uuidArray, 8,	4)	+ sep	//Integer giving the middle 16 bits of the time
uuid += __uuid_segment_stringify(uuidArray, 12, 4)	+ sep	//Version in the 4 leftmost bits, followed by the high 12 bits of the time
uuid += __uuid_segment_stringify(uuidArray, 16, 4)	+ sep	//1 to 3-bit "variant" in the leftmost bits, followed by the 13 to 15-bit clock sequence
uuid += __uuid_segment_stringify(uuidArray, 20, 12)			//48-bit node id

return uuid