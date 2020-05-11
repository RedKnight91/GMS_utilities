///@param scriptName/scriptIndex

var scriptID = argument0
var script = scriptID

if (is_string(scriptID))
	script = asset_get_index(scriptID)

assert_script_index_exists(script, true)

return script