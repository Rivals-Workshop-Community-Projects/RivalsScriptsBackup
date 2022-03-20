//article 1 update

if (distort_time < 10)
distort_time++;
else
distort_time = 0;

if (!list_convert){
rewind_x = list(rewind_x);
rewind_y = list(rewind_y);
rewind_dir = list(rewind_dir);
rewind_sprite = list(rewind_sprite);
rewind_state = list(rewind_state);
list_convert = true;
}

if (!primed && player_id.state != PS_RESPAWN){
	if (rewind_length == 0)
		{
	    x = floor(lerp(x, list_get(rewind_x, list_length(rewind_x)-1), 0.6));
	    y = floor(lerp(y, list_get(rewind_y, list_length(rewind_y)-1), 0.6));

	    
		}
	
	if (rewind_store_interval > 0)
	{
	    rewind_store_interval--;
	    rewind_store_interval = clamp(rewind_store_interval,0,rewind_store_interval);
	    
	
	}
	else
	{
	
	
		list_insert(rewind_x, 0,player_id.x );
	    list_insert(rewind_y, 0,player_id.y );
	    list_insert(rewind_dir, 0,player_id.spr_dir );
	    list_insert(rewind_sprite, 0,player_id.free );
	    list_insert(rewind_state, 0,player_id.state );
	    
        cur_free = list_get(rewind_sprite, list_length(rewind_sprite)-1);
        cur_state = list_get(rewind_state, list_length(rewind_state)-1);

        if (cur_free)
		cur_spr = sprite_get("jump");
        else if (cur_state != PS_IDLE && cur_state != PS_SPAWN)
	    cur_spr = sprite_get("dash");
        else
        cur_spr = sprite_get("idle");

	    // print_debug(
	    // 	string(list_get(rewind_x, 0)) + ", " +
	    // 	string(list_get(rewind_x, 1)) + ", " +
	    // 	string(list_get(rewind_x, 2)) + ", " +
	    // 	string(list_get(rewind_x, 3)) + ", " +
	    // 	string(list_get(rewind_x, 4)) + ", " +
	    // 	string(list_get(rewind_x, 5)) + ", " 
	    	
	    // 	);
	   
	    rewind_store_interval = rewind_store_interval_def;
	    
	    if (rewind_length == 0)
	    {
	        x = list_get(rewind_x, list_length(rewind_x)-1);
	        y = list_get(rewind_y, list_length(rewind_y)-1);
			spr_dir = list_get(rewind_dir, list_length(rewind_dir)-1);
	    	
			//cur_img = list_get(rewind_image, list_length(rewind_image)-1);
            if (cur_free){
                if (!change_free){
                cur_img = 0;
                change_free = true;
                }
                if (cur_img < 8) && (change_free)
                cur_img += 0.4;
            }
            else if (!cur_free){
                if (change_free){
                cur_img = 0;
                change_free = false;
                }
                if (!change_free)
                cur_img += 0.4;
            }

			//print_debug(string(change_free));
	        
	        list_delete(rewind_x, list_length(rewind_x)-1);
	        list_delete(rewind_y, list_length(rewind_y)-1);
	        list_delete(rewind_dir, list_length(rewind_dir)-1);
	        list_delete(rewind_sprite, list_length(rewind_sprite)-1);
	        list_delete(rewind_state, list_length(rewind_state)-1);
	    }
	
	
	
	}
	
	if (rewind_length != 0)
	{
	    	rewind_length--;
	}
}
else
{

	rewind_length = rewind_length_def;
	list_clear(rewind_x);
	list_clear(rewind_y);
	list_clear(rewind_dir);
	list_clear(rewind_sprite);
	list_clear(rewind_state);
	
	
}



// A list is a datastructure similar to an array or ds_list.
// A list behaves like an array, including avoiding potential memory leaks and allocation errors, but can change size in ammortized constant time.

#define list(array)
// Convert the array to a list
    var size = array_length(array)
    var array = _list_reallocate_array(array, size)
    return {
        size:size,
        a:array
    }

#define list_create
/// list_create(size, val = 0)
var size = argument[0];
var val = argument_count > 1 ? argument[1] : 0;
// Create a list of the default value with the given size.
    var values = array_create(size, val)
    var array = _list_reallocate_array(values, size)
    return {
        size:size,
        a:array
    }

#define list_join(lst0, lst1)
// Add the second list to the first.
    var array = lst0.a
    var total_size = lst0.size + lst1.size
    array = _list_update_size(array, total_size)
    for (var i=0; i<lst1.size; i++) {
        array[lst0.size+i] = lst1.a[i]
    }
    lst0.size = total_size
    lst0.a = array

#define list_clear(lst)
// Empty the list.
    list.size = 0
    lst.a = _list_reallocate_array([], 0)


#define list_clone(lst)
// Returns a shallow copy of the list.
    return {
        size:lst.size,
        a:array_clone(lst.a)
    }

#define list_equals(lst0, lst1)
    return array_equals(lst0.a, lst1.a) and lst0.size == lst1.size

#define list_get(lst, index)
    if index <= lst.size-1 {
        return lst.a[index]
    } else {
        print_debug("List index " +  string(index) + " is out of bounds. 0 to " + string(lst.size-1) + " exclusive.");
    }

#define list_set(lst, index, value)
// Sets the given index to the value. Empty spaces created are filled with undefined.
    var array = lst.a
    array = _list_update_size(array, max(lst.size, index+1))

    array[index] = value
    lst.a = array
    lst.size = index+1

#define list_insert
// list_insert(lst, index, value, [value], [value], [etc...])
// Add the given values to the list, starting at the given index
    var lst = argument[0]
    var array = lst.a
    var index = argument[1]
    var value = argument[2]
    
    var num_to_add = argument_count - 2
    var new_size = lst.size + num_to_add
    array = _list_update_size(array, new_size)

    // shift over existing values equal to num_to_add
    for (var i=array_length(array)-1-num_to_add; i >= index; i--) {
        array[i+num_to_add] = array[i]
    }
    array[index] = value
    for (var i=3; i<argument_count; i++) {
        array[index+i-2] = argument[i]
    }
    lst.a = array
    lst.size = new_size

#define list_delete(lst, index)
// Delete the value of the list at the index
    var array = lst.a
    for (var i=index+1; i<lst.size; i++) {
        array[i-1] = array[i]
    }
    array[lst.size-1] = undefined
    
    var new_size = lst.size-1
    array = _list_update_size(array, new_size)
    
    lst.a = array
    lst.size = new_size


#define list_find_index(lst, val)
// Return the first index of the value in the list
    var index = array_find_index(lst.a, val)
    if index >= lst.size {
        index = -1
    }
    return index

#define list_remove(lst, val)
// Remove the first value of the list matching the value.
    var index = list_find_index(lst, val)
    if index == -1 {
        print_debug("Value " + string(val) + " expected but not found")
    }
    list_delete(lst, index)

#define list_sum(lst)
    var _sum = 0
    for (var i=0; i<lst.size; i++) {
        _sum += lst.a[i]
    }
    return _sum

#define list_max(lst)

    var _max = lst[0]
    for (var i=0; i<lst.size; i++) {
        if lst.a[i] > _max {
            _max = lst.a[i]
        }
    }
    return _max

#define list_min(lst)
    var _min = lst[0]
    for (var i=0; i<lst.size; i++) {
        if lst.a[i] < _min {
            _min = lst.a[i]
        }
    }
    return _min


#define list_slice(lst, start, length)
// Returns a new list with values representing a section of a list.
    var src_array = lst.a
    var dst_list = list_create(length)
    var dst_array = dst_list.a
    array_copy(dst_array, 0, src_array, start, length)
    return {
        size: length,
        a: dst_array
    }

#define list_length(lst)
    return lst.size

#define list_push(lst, val)
// Add the value to the end of the list.
    var array = lst.a
    var new_size = lst.size + 1
    array = _list_update_size(array, new_size)
    array[new_size-1] = val
    
    lst.a = array
    lst.size = new_size


#define list_pop(lst)
// Return and remove the last item of the list
    var array = lst.a
    var new_size = lst.size-1
    
    var pop_value = array[lst.size-1]
    array[lst.size-1] = undefined
    
    lst.a = array
    lst.size = new_size
    return pop_value

#define list_all(lst, function)
// Returns true if all of the items match the condition function
    var array = lst.a
    if is_string(function) {
        function = script_get_index(function)
    }
    for (var i=0; i<lst.size; i+=1) {
    	if (not script_execute(function, array[i])) {
    		return false
    	}
    }
    return true


#define list_any(lst, function)
// Returns true if any of the items match the condition function
    var array = lst.a
    if is_string(function) {
        function = script_get_index(function)
    }
    for (var i=0; i<lst.size; i+=1) {
    	if (script_execute(function, array[i])) {
    		return true
    	}
    }
    return false
    

#define list_filter(lst, function)
// Removes all items that don't match the condition function
    var array = lst.a
    if is_string(function) {
        function = script_get_index(function)
    }
    
    // Move matching items to front
    var current_new_size = 0
    for (var i=0; i<lst.size; i+=1) {
    	if (script_execute(function, array[i])) {
    		array[current_new_size]=array[i]
    		current_new_size += 1
    	}
    }
    var new_size = current_new_size
    
    //Overwrite anything after
    for (var i=new_size; i<lst.size; i+=1) {
        array[i] = undefined
    }
    array = _list_update_size(array, new_size)
    lst.a = array
    lst.size = new_size

#define list_with_each_replace(lst, function)
// Runs the function on each item of the list, replacing the item with the return value.
    var array = lst.a
    if is_string(function) {
        function = script_get_index(function)
    }
    for (var i=0; i<lst.size; i+=1) {
    	array[i] = script_execute(function, array[i])
    }

    lst.a = array

#define list_with_each(lst, function)
// Runs the function on each item of the list, without overwriting the list.
    var array = lst.a
    if is_string(function) {
        function = script_get_index(function)
    }
    for (var i=0; i<lst.size; i+=1) {
    	script_execute(function, array[i])
    }

    lst.a = array

#define _list_update_size(array, new_size)
// Reallocates space if the new size is too large or much smaller than current allocated space.
    var current_size = array_length(array)
    
    if new_size < current_size/2 or new_size > current_size {
        return _list_reallocate_array(array, new_size)
    } else {
        return array
    }
    

#define _list_reallocate_array(array, size)
// Allocates space for the array with some extra padding
    if size < 9 {
        var padding = 3
    } else {
        var padding = 6
    }
    var alloc_size = size + (size >> 3) + padding
    var new_array = array_create(alloc_size, undefined)
    array_copy(new_array, 0, array, 0, alloc_size)
    return new_array







 
 




