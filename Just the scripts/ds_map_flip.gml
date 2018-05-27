/// @function ds_map_flip(_map)
/// @desc Returns a map with the keys and values swapped from the given map
/// @arg {real} _map

var _new_map = ds_map_create();
var _key = ds_map_find_first(argument0);
while (not is_undefined(_key))
{
	ds_map_add(_new_map, argument0[? _key], _key);
	_key = ds_map_find_next(argument0, _key);
}

return _new_map