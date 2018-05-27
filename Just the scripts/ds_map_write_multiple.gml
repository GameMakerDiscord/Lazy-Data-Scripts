/// @function ds_map_write_multiple(_id, _key, _value, ...)
/// @desc Updates multiple values in the given map
/// @arg {real} _map_index
/// @arg {string} _key
/// @arg {*} _value
/// @arg ...

var _map = argument[0];
for (var i = 1; i < argument_count; i++;)
{
	var _key = argument[i];
	var _value = argument[++i];
	if (not ds_map_exists(_map, _key)) show_error("Error in ds_map_write_multiple: key not found!", false);
	_map[? _key] = _value;
}