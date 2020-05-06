///@desc Destroy all data structures of a type
///@param type

var type = argument0
var limit = 1000
var count = 0

for (var i = 0; i < (count + limit); i++) {
	if (ds_exists(i, type)) {
		count ++
		ds_destroy(i, type)
	}
}