/// @function ds_list_add_list(_list, _list)
/// @desc Adds a list to a list (for the purpose of JSON encoding)
/// @arg {real} _target_list
/// @arg {real} _source_list

ds_list_add(argument0, argument1);
var _index = ds_list_find_index(argument0, argument1);
ds_list_mark_as_list(argument0, _index);