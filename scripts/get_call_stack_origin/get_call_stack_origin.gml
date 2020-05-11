var stack = debug_get_callstack()
var i = 1
var origin = 0

while (origin == 0)
	origin = stack[array_length_1d(stack) - i++]

return origin