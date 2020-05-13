///@param object
///@param [checkDescendant]

var object = argument[0]
var checkDescendant = (ARG_N == 2) ? argument[1] : false

var match = (object_index == object || (checkDescendant && object_is_ancestor(object_index, object)))

return match