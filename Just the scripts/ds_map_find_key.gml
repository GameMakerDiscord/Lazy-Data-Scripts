/// @function ds_map_find_key(_map, _value)
/// @desc Returns the first key that holds the given value in a map
/// @arg {real} _map
/// @arg {*} _value

var _key = ds_map_find_first(argument0);
while (not is_undefined(_key))
{
	if (argument0[? _key] == argument1)
	{
		return _key
	}
	_key = ds_map_find_next(argument0, _key);
}