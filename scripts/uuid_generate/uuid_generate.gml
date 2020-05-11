/// @description uuid_generate()
var date = current_time + timestamp_get() * 10000
var size = 32
var uuid = array_create(size)

for (var i = 0; i < size; ++i) {
    var r = floor((date + random(1) * 16)) mod 16
    
    if (i == 16)
        uuid[i] = dec_to_hex(r & $3|$8)	//1 to 3-bit variant
    else
        uuid[i] = dec_to_hex(r)
}

uuid[12] = "4" //UUID version

return __uuid_stringify(uuid)