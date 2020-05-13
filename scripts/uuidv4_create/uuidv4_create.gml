///@desc UUIDv4 generated using MD5 hashing function
//MD5 is a 128-bit value, UUID is also a 128-bit value
//To use an MD5 result as a UUID, we just need to set two bytes to adhere to the UUIDv4 standard

//Time is only used to randomize in case the seed hasn't been randomized
var time = string(current_time)
var date = string(date_current_datetime())
var rand = string(random(1000000))

var uuid = md5_string_utf8(time + date + rand)

var variant = ord(choose("8", "9", "a", "b"))
uuid = string_set_byte_at(uuid, 13, ord("4")) //UUID version 4
uuid = string_set_byte_at(uuid, 17, variant)

//Hyphenate
uuid = string_insert("-", uuid, 21)
uuid = string_insert("-", uuid, 17)
uuid = string_insert("-", uuid, 13)
uuid = string_insert("-", uuid, 9)

return uuid