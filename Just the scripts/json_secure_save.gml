/// json_secure_save(_map, _filename, _crypt_key)
/// @description Saves the given ds_map to a file in an encoded JSON format
/// with the given filename and encryption key.
/// @arg {real} _map
/// @arg {string} _filename
/// @arg {real} _crypt_key

// Recrod / set seed
var _seed = random_get_seed();
random_set_seed(argument2);

// Encode data
var _str = json_encode(argument0);
var _buff = buffer_create(string_byte_length(_str), buffer_fixed, 1);

// Create buffers
buffer_write(_buff, buffer_text, _str);
buffer_seek(_buff, buffer_seek_start, 0);
buffer_resize(_buff, buffer_get_size(_buff) + 3);
var _new_buff = buffer_create(buffer_get_size(_buff), buffer_fixed, 1);

// Encode buffer
repeat (buffer_get_size(_buff) / 4)
{
    var _bytes = buffer_read(_buff, buffer_u32);
    var _bytes = _bytes ^ irandom(0xffffffff);
    buffer_write(_new_buff, buffer_u32, _bytes);
}

// Save and cleanup
buffer_save(_new_buff, argument1);
buffer_delete(_buff);
buffer_delete(_new_buff);
random_set_seed(_seed);