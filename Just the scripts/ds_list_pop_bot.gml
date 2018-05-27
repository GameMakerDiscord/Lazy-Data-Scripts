/// @function ds_list_pop_bot(_list)
/// @desc Returns and removes the top value (0 index) from a list
/// Yes, pop_back would be more proper, but pop_bot also sounds hilarious
/// @arg {real} _list

var _val = argument0[| ds_list_size(argument0) - 1];
ds_list_delete(argument0, ds_list_size(argument0) - 1);
return _val