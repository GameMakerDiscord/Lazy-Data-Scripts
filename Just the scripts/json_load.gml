/// @function json_load(_filename)
/// @desc Loads the JSON file and returns its data in a map
/// @arg {string} _filename

var _map = ds_map_create();
var _buff = buffer_load(argument0);
_map = json_decode(buffer_read(_buff, buffer_text));
buffer_delete(_buff);
return _map;