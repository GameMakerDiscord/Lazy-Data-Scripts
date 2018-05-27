/// @function ds_list_swap_values(_list, _index_one, _index_two)
/// @desc Takes the given two indices and swaps their values in a list
/// @arg {real} _list
/// @arg {real} _index_one
/// @arg {real} _index_two

var _list = argument0;
var _index_one = argument1;
var _index_two = argument2;
var _val_one = _list[| _index_one];
var _val_two = _list[| _index_two];
_list[| _index_one] = _val_two;
_list[| _index_two] = _val_one;