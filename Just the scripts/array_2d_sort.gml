/// @function array_sort(_array, _row);
/// @desc Sorts the 2d array in an ascending order inside the given row.
/// @param {array} _array
/// @param {real} _row

var a = argument0;
var r = argument1;

// Full progression
for (var i = 0; i < array_height_2d(a); i++;)
{
    // Individual sort
    for (var j = i; j > 0; j--;)
    {
        // Check for mis-order
        if (a[@ j, r] < a[@ j - 1, r])
        {
            // Shift whole row
            for (var k = 0; k < array_length_2d(a, j); k++;)
            {
                var _held_data = a[@ j, k];
                a[@ j, k] = a[@ j - 1, k];
                a[@ j - 1, k] = _held_data;
            }
        }
    }
}