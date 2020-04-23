///@desc Look for valid list indices (carry on research when a ds is found)
///@param ds_type

var type = argument0
var limit = 500
var count = 0

for (var i = 0; i < (count + limit); i++)
	count += ds_exists(i, type)
	
return count