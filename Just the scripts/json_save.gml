/// @function json_save()
/// @desc Saves the given map to a file in JSON format with the given filename.
/// @param {real} _map
/// @param {string} _filename

var _str = json_encode(argument0);
var _str = json_minify(_str);
var _str = json_beautify(_str);
var _buff = buffer_create(string_byte_length(_str), buffer_fixed, 1);
buffer_write(_buff, buffer_text, _str);
buffer_save(_buff, argument1);
buffer_delete(_buff);