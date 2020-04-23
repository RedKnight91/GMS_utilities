///@param surface

var surface = argument0

var condition = surface_exists(surface)
assertWithErrorMessage(condition, "Surface does not exist", surface)