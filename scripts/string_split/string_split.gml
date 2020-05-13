///@param str
///@param separator

var str = argument0
var separator = argument1

var substrings = []
var split
var i = 0
var pos = string_pos(separator, str)

while (pos != 0) {
	split = string_break(str, pos)
	substrings[i++] = split[0]
	
	str = split[1]
	while (string_char_at(str, 1) == separator)
		str = string_trim(str, 1, 0) //Remove separator from leftover string
		
	pos = string_pos(separator, str)
}

substrings[i] = str

return substrings