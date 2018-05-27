/// @function ds_list_create_from_keys(_map)
/// @desc Creates a list out of the given map's keys
/// @arg {real} _map

// Indices 
var _list = ds_list_create();
var _map = argument0;

// DS testing (hardly a guarentee due to lack of true data types, but a basic check)
if (not ds_exists(_map, ds_type_map))
{
	show_error("Error in ds_list_add_map_values: " + string(_map) + " does not point to a valid map.", false);
	exit;
}

// Loop through map
var _key = ds_map_find_first(_map);
while (not is_undefined(_key))
{
	ds_list_add(_list, _key);
	_key = ds_map_find_next(_map, _key);
}

// Return the new list
return _list;