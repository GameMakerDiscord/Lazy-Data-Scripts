/// @function ds_grid_to_array(_grid, _destroy_grid)
/// @desc Returns an array translated from a grid, with the option to destroy the grid afterwords.
/// @arg {real} _grid
/// @arg {bool} _destroy_grid

// Translate grid into array
var _array;
for (var i = 0; i < ds_grid_width(argument0); i++;)
{
	for (var j = 0; j < ds_grid_height(argument0); j++;)
	{
		_array[i, j] = argument0[# i, j];
	}
}

// Destory grid
if (argument1)
{
	ds_grid_destroy(argument0);
}

return _array;