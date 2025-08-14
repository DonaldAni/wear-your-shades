#macro RUN_FROM_IDE parameter_count()==3&&string_count("GMS2TEMP",parameter_string(2))

function print() {
	var r = string(argument[0]), i;
	for (i = 1; i < argument_count; i++) {
	    r += ", " + string(argument[i])
	}	
	var name
	if not is_undefined(id.object_index)
		name = object_get_name(id.object_index)
	else
		name = "???"
	show_debug_message($"{name}: {r}")
}