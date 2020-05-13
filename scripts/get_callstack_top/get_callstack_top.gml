var stack = debug_get_callstack()
var i = 1
var top = 0

while (top == 0)
	top = stack[array_length_1d(stack) - i++]

return top