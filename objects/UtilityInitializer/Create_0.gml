#macro ARG_N argument_count

#macro ARG_ARRAY args__
#macro ARG_INDEX i__
#macro ARG_MAKE_ARRAY\
	var args__ = array_create(ARG_N)\
	for (var i__ = 0; i__ < ARG_N; ++i__)\
		args__[i__]

//Usage:
//ARG_MAKE_ARRAY = argument[ARG_INDEX]
//var args = ARG_ARRAY
		

#macro MAKE_SINGLETON\
	if (instance_number(object_index) > 1){\
		instance_destroy(id, false)\
		exit\
	}
	
	
//Used to solve buggy is_bool() behavior
#macro True bool(true)
#macro False bool(false)


//Used to silence warnings
is_bool(True)
is_bool(False)
MAKE_SINGLETON
