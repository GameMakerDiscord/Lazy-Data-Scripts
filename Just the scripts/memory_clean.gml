/// memory_clean()
/// @function Attempts to destroy all persistent instances, data structures, buffers, and surfaces.
/// Prints a summary to the console.
/// NOTE: This script isn't a guarantee! The script will stop scanning after
/// it has read 100 indices with no data found for each type.
/// While this should be sufficient, it is possible that gaps in data may exist.
/// Do note that if you do intend to use this as your primary source of cleaning, you should avoid
/// manually remove your data structures in other cleanup events.

// Counts
var _list_count = 0;
var _map_count = 0;
var _grid_count = 0;
var _priority_count = 0;
var _queue_count = 0;
var _stack_count = 0;
var _buffer_count = 0;
var _surface_count = 0;
var _instance_count = 0;

// Break variable
var _break = 0;

// Time
var _start = current_time;

// Instance Destruction
with (all)
{
	if (persistent == true and id != other.id)
	{
		instance_destroy();
		_instance_count++;
	}
}

// Data Destruction
for (var i = 0; i < 100000; i++;)
{	
	// List destroy
	if (ds_exists(i, ds_type_list))
	{
		ds_list_destroy(i);
		_list_count++;
		_break = 0;
	}
	
	// Map destroy
	if (ds_exists(i, ds_type_map))
	{
		ds_map_destroy(i);
		_map_count++;
		_break = 0;
	}
	
	// Grid destroy
	if (ds_exists(i, ds_type_grid))
	{
		ds_grid_destroy(i);
		_grid_count++;
		_break = 0;
	}
	
	// Priority queue destroy
	if (ds_exists(i, ds_type_priority))
	{
		ds_priority_destroy(i);
		_priority_count++;
		_break = 0;
	}
	
	// Queue destroy
	if (ds_exists(i, ds_type_queue))
	{
		ds_queue_destroy(i);
		_queue_count++;
		_break = 0;
	}
	
	// Stack destroy
	if (ds_exists(i, ds_type_stack))
	{
		ds_stack_destroy(i);
		_stack_count++;
		_break = 0;
	}
	
	// Buffer destroy
	if (buffer_exists(i))
	{
		buffer_delete(i);
		_buffer_count++;
		_break = 0;
	}
	
	// Surface destroy
	if (surface_exists(i))
	{
		surface_free(i);
		_surface_count++;
		_break = 0;
	}
	
	_break++;
	
	// If we have passed through 100 iterations with no data found
	if (_break >= 100)
	{
		show_debug_message("\nMemory cleared. Summary: " + "\n"
		+ "Lists: " + string(_list_count) + "\n"
		+ "Maps: " + string(_map_count) + "\n"
		+ "Grids: " + string(_grid_count) + "\n"
		+ "Priority Queues: " + string(_priority_count) + "\n"
		+ "Queues: " + string(_queue_count) + "\n"
		+ "Stacks: " + string(_stack_count) + "\n"
		+ "Buffers: " + string(_buffer_count) + "\n"
		+ "Surfaces: " + string(_surface_count) + "\n"
		+ "Persistent Instances: " + string(_instance_count) + "\n"
		+ "Iterations: " + string(i) + "\n"
		+ "Total Time: " + string(current_time - _start) + "\n");
		return;
	}
}

// In case we somehow don't break?
show_debug_message("\nMemory cleared. Summary:" + "\n"
+ "Lists: " + string(_list_count) + "\n"
+ "Maps: " + string(_map_count) + "\n"
+ "Grids: " + string(_grid_count) + "\n"
+ "Priority Queues: " + string(_priority_count) + "\n"
+ "Queues: " + string(_queue_count) + "\n"
+ "Stacks: " + string(_stack_count) + "\n"
+ "Buffers: " + string(_buffer_count) + "\n"
+ "Surface: " + string(_surface_count) + "\n"
+ "Persistent Instances: " + string(_instance_count) + "\n"
+ "Iterations: " + string(i) + "\n"
+ "Total Time: " + string(current_time - _start) + "\n");
return;