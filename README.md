# Lazy Data Scripts

Do you love data as much as I do? If so, you may be a bit frustrated at how working in GMS isn't quite as elegant as other languages. Fear not! This collection of scripts adds many "missing" or otherwise useful functions to be used inside of GMS2. This is a library that I have constructed for the past few months whenever I had need for a new script. I will more than likely be adding more as I come up with more ideas. 

If you have ideas for other functions, let me know and I'll look into making them!


Current Functions:

    ds_list_add_list(_list, _list)
      Adds a list to a list (for the purpose of JSON encoding)
    ds_list_add_map(_list, _map)
      Adds a map to a list (for the purpose of JSON encoding)
    ds_list_create_from_map(_map)
      Creates a list out of the given map's values
    ds_list_create_from_keys(_map)
      Creates a list out of the given map's keys
    ds_list_swap_values(_list, _index_one, _index_two)
      Takes the given two indices and swaps their values in a list
    ds_list_delete_value(_list, _value)
      Finds and deletes the given value from a list
    ds_list_pop_bot(_list)
      Adds a map to a list (for the purpose of JSON encoding)
    ds_list_pop_top(_list)
      Returns and removes the top value (0 index) from a list
    ds_map_add_multiple(_id, _key, _value, ...)
      Adds multiple keys and values to the given map
    ds_map_write_multiple(_id, _key, _value, ...)
      Updates multiple values in the given map
    ds_map_find_key(_map, _value)
      Returns the first key that holds the given value in a map
    ds_map_flip(_map)
      Returns a map with the keys and values swapped from the given map
    array_sort(_array, _row)
      Sorts the 2d array in an ascending order inside the given row
    ds_grid_to_array(_grid, _destroy_grid)
      Returns an array translated from a grid, with the option to destroy the grid afterwords.
    json_save()
      Saves the given map to a file in JSON format with the given filename.
    json_load(_filename)
      Loads the JSON file and returns its data in a map
    json_secure_save(_map, _filename, _crypt_key)
      Saves the given ds_map to a file in an encoded JSON format
    json_secure_load(_file, _crypt_key)
      Loads the encrypted JSON file and returns its data in a map
    memory_clean()
      Attempts to destroy all persistent instances, data structures, buffers, and surfaces.
