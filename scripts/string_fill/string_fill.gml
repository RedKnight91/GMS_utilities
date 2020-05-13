///@func	string_fill(string, template, str1, str2, ...
///@func	Replaces template substrings (e.g. "%%"), with given strings, thus 'completing' the string
///			Example:	greeting = "%%, my name is %%!"
///						greeting = string_fill(greeting, "%%", "Hi", "Mike")
///
///			Result:		"Hi, my name is Mike"
///
///@param	string
///@param	template
///@param	str1
///@param	str2
///@param	...

var str = argument[0]
var template = argument[1]

for (var i = 2; i < ARG_N; i++)
	str = string_replace(str, template, string(argument[i]))
	
return str