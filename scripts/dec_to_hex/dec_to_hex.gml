/// @description  dec_to_hex(dec)
/// @param dec
//
//  Returns a string of hexadecimal digits (4 bits each)
//  representing the given decimal integer. Hexadecimal
//  strings are padded to byte-sized pairs of digits.
//
//      dec         non-negative integer, real
//
/// GMLscripts.com/license
// has been adapted

var dec = argument0
var hex = (dec) ? "" : "0"

var nums = "0123456789ABCDEF"

while (dec) {
    var byte = dec & 255
    var hi = string_char_at(nums, byte div 16 + 1)
    var lo = string_char_at(nums, byte mod 16 + 1)
	
    hex = (hi != "0") ? hi : ""
	hex += lo + hex
    
	dec = dec >> 8
}

return hex