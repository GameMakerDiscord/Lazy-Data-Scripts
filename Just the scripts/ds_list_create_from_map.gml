/// @function ds_list_create_from_map(_map)
/// @desc Creates a list out of the given map's values
/// @arg {real} _map

// Indexes 
var _list_index = ds_list_create();
var _map_index = argument0;

// DS testing (hardly a guarentee due to lack of true data types, but a basic check)
if (not ds_exists(_map_index, ds_type_map))
{
	show_error("Error in ds_list_add_map_values: " + string(_map_index) + " does not point to a valid map.", false);
	exit;
}

// Loop through map
var _key = ds_map_find_first(_map_index);
while (not is_undefined(_key))
{
	var _value = _map_index[? _key];
	
	// DS testing
	if (ds_exists(_value, ds_type_list))
	{
		ds_list_add(_list_index, _value);
	}
	else if (ds_exists(_value, ds_type_map))
	{
		ds_list_add(_list_index, _value);
	}
	else
	{
		ds_list_add(_list_index, _value);
	}
	_key = ds_map_find_next(_map_index, _key);
}

// Return the new list
return _list_index;