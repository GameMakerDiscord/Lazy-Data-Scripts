/// @function ds_list_pop_top(_list)
/// @desc Returns and removes the top value (0 index) from a list
/// Yes, pop_front would be more proper, but pop_top sounds hilarious
/// @arg {real} _list

var _val = argument0[| 0];
ds_list_delete(argument0, 0);
return _val