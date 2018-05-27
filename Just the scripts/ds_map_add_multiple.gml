/// @function ds_map_add_multiple(_id, _key, _value, ...)
/// @desc Adds multiple keys and values to the given map
/// @arg {string} _key
/// @arg {*} _value
/// @arg ...

var _map = argument[0];
for (var i = 1; i < argument_count; ++i;)
{
	var _key = argument[i];
	var _value = argument[++i];
	ds_map_add(_map, _key, _value);
}