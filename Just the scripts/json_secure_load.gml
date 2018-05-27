/// @function json_secure_load(_file, _crypt_key)
/// @desc Loads the encrypted JSON file and returns its data in a map
/// NOTE! This function will only work with the script 'json_secure_save' by lazyeye!
/// @arg {string} _file
/// @arg {real} _crypt_key

// Set seed
var _seed = random_get_seed();
random_set_seed(argument1);

// Decoding
var _map = ds_map_create();
var _buff = buffer_load(argument0);
buffer_seek(_buff, buffer_seek_start, 0);
var _new_buff = buffer_create(buffer_get_size(_buff) + 3, buffer_fixed, 1);
repeat (buffer_get_size(_buff) / 4)
{
    var _bytes = buffer_read(_buff, buffer_u32);
    var _bytes = _bytes ^ irandom(0xffffffff);
    buffer_write(_new_buff, buffer_u32, _bytes);
}

// Cleanup / return map
buffer_seek(_new_buff, buffer_seek_start, 0);
var _map = json_decode(buffer_read(_new_buff, buffer_text));
buffer_delete(_buff);
buffer_delete(_new_buff);
random_set_seed(_seed);
return _map;