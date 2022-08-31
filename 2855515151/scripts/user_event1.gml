//CODE TO USE FOR SPAWNING

var hat_exists = instance_exists(hat_object);
var first_item = rotateItems();

//position to spawn the item from, may not be applicable everywhere
var spawn_pos;
spawn_pos =  hat_exists ? [hat_object.x, hat_object.y-14] : [x+(8*spr_dir), y-30];
if (hat_exists && hat_object.state == 1)
{
	hat_object.state = 3;
	hat_object.state_timer = 0;
    hat_object.image_index = 0;
}

//EXECUTION ITEMS.
//Some items trigger and run through an animation automatically -- these are Automatic Items, "Autos".
//Whereas some need an additional Dspecial input to be activated -- these are Execution Items, "Execs".
var exec_items = [0,1];
exec_item_state = setExecState(exec_items,first_item);

//Save exec item for later and 
if exec_item_state == 0
{
	exec_item = first_item;
	exec_item_obj = !instance_exists(exec_item_obj) ? instance_create(spawn_pos[0],spawn_pos[1],"obj_article3") : exec_item_obj;
	exec_item_obj.hat_item = hat_exists;
}

//DO SOMETHING BASED ON ITEM ---- EDIT THESE CASES
switch (first_item)
{
	//ROGER (my beloved)	
	case 0:
	if (exec_item_obj.hat_item == 1)
	{
		exec_item_obj.x = hat_object.x;
		exec_item_obj.y = hat_object.y - 20;
	}
	else
	{
		exec_item_obj.x = x + (10 * spr_dir);
		exec_item_obj.y = y - 20;
	}
	exec_item_obj.mask_index = sprite_get("roger");
	exec_item_obj.spr_dir = spr_dir;
	break;
	
	//TIME BOMB
	//Budbe
	case 1:
	if (exec_item_obj.hat_item == 1)
	{
		exec_item_obj.x = hat_object.x;
		exec_item_obj.y = hat_object.y - 20;
	}
	else
	{
		exec_item_obj.x = x + (10 * spr_dir);
		exec_item_obj.y = y - 20;
	}
	exec_item_obj.sprite_index = sprite_get("budbe");
	exec_item_obj.spr_dir = spr_dir;
	break;
	
	//FREEZY BALL
	case 2:

	break;
	
	//OTTO1 8-BALL
	case 3:
	if (hat_exists == 1)
	{
		create_hitbox(AT_DSPECIAL_2, 3, hat_object.x, hat_object.y - 40);
		spawn_hit_fx(hat_object.x, hat_object.y - 45, otto_create);
	}
	else
	{
		create_hitbox(AT_DSPECIAL_2, 3, x, y - 40);
		spawn_hit_fx(x, y - 90, otto_create)
	}
	sound_play(asset_get("sfx_fish_collect"));
	break;
	
	//MALACHI
	case 4:
	
	break;
}

#define setExecState(ar,first)
return (array_find_index(ar, first) != -1) - 1

#define getItem() // yandev lol
/// getItem(_roll)
var _roll = argument0;

var result = -1;

if clamp(_roll, 0, 39) == _roll
{
	result = 0;
}
else if clamp(_roll, 40, 69) == _roll
{
	result = 1;
}
else if clamp(_roll, 70, 89) == _roll
{
	result = 2;
}
else if clamp(_roll, 90, 104) == _roll
{
	result = 3;
}
else if clamp(_roll, 105, 119) == _roll
{
	result = 4;
}
return result;

#define rotateItems()
var items_arr = array_clone(items)

var item_rotated = items_arr[0];
items[0] = items_arr[1];
items[1] = items_arr[2];

var seed = (player+get_gameplay_time()) % 11;
var roll = round(random_func_2(seed, 119, false));
var itemtoplace = getItem(roll);

var i = 0;
while (itemtoplace == items[0] || itemtoplace == items[1] || itemtoplace == item_rotated)
{
	++seed;
	roll = round(random_func_2(seed, 119, false));
	itemtoplace = getItem(roll);
	++i;
}
items[2] = itemtoplace;
return item_rotated;