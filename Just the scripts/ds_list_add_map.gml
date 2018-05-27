/// @function ds_list_add_map(_list, _map)
/// @desc Adds a map to a list (for the purpose of JSON encoding)
/// @arg {real} _list
/// @arg {real} _map

ds_list_add(argument0, argument1);
var _index = ds_list_find_index(argument0, argument1);
ds_list_mark_as_map(argument0, _index);