//viselle dummy sprite update

print("check hitboxes");

//loops through window stuff
for(var i=0; i<array_length(hitboxes); i++)
{
	with(player_id)
	{
		var checkFrame = get_hitbox_value( other.storedAttack, other.hitboxes[i], HG_WINDOW_CREATION_FRAME);
		var checkWindow = get_hitbox_value( other.storedAttack, other.hitboxes[i], HG_WINDOW);
		print("this: " + string(other.window) + " : " + string(other.window_timer));
		print(string(checkWindow) + " : " + string(checkFrame));
		//Check if we can create a hitbox
		if checkFrame == other.window_timer && checkWindow == other.window+1
		{
			print("Matched Hitbox: " + string(other.hitboxes[i]));
			
			var h = create_hitbox(other.storedAttack,other.hitboxes[i],other.x,other.y);
			
			h.x = other.x + (h.x_pos);
			h.y = other.y + (h.y_pos);
			
			//print("playerX: " + string(x) + " / hitboxX: " + string(h.x) + " / cloneX: " + string(other.x));
			//print("playerY: " + string(y) + " / hitboxY: " + string(h.y) + " / cloneY: " + string(other.y));
		}
	}
}//*/

print("hitbox checked");

with(player_id)
{
	//sprite syncer
	var startInd = get_window_value( other.storedAttack, other.window+1, AG_WINDOW_ANIM_FRAME_START);
	var frameOffset = get_window_value( other.storedAttack, other.window+1, AG_WINDOW_ANIM_FRAMES)
		* (other.window_timer/get_window_value( other.storedAttack, other.window+1, AG_WINDOW_LENGTH));
	other.image_index = startInd + frameOffset;
}//*/

print("anim checked");

//increment windows
//set destruction as well
window_timer++;
if endOfWindow(storedAttack, window+1)
{
	if window < array_length(windows)
	{
		print("Incremented Windows");
		window++;
		window_timer = 0;
	}
	else
	{
		instance_destroy();
	}
}
else if !framed && window == array_length(windows)-1
{
	var v = 0;
	with(player_id)
		v = get_window_value( other.storedAttack, other.window+1, AG_WINDOW_LENGTH);
	if window_timer >= v-10
	{
		framed = true;
		with(player_id)
		{
			var f = spawn_hit_fx(other.x,other.y, jcaul);
			f.depth = other.depth-1;
		}
	}
}//*/

#define endOfWindow(attack, index)
{
	var v = 0;
	var a = attack;
	var i = index;
	with(player_id)
		v = get_window_value( a, i, AG_WINDOW_LENGTH);
	return window_timer >= v;
}