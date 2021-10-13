//viselle dummy sprite update

//loops through window stuff
for(var i=0; i<array_length(hitboxes); i++)
{
	with(player_id)
	{
		var checkFrame = get_hitbox_value( other.storedAttack, other.hitboxes[i], HG_WINDOW_CREATION_FRAME);
		var checkWindow = get_hitbox_value( other.storedAttack, other.hitboxes[i], HG_WINDOW);

		//Check if we can create a hitbox
		if checkFrame == other.window_timer && checkWindow == other.window+1
		{
			
			var h = create_hitbox(other.storedAttack,other.hitboxes[i],other.x,other.y);
			
			h.x = other.x + (h.x_pos);
			h.y = other.y + (h.y_pos);
			
		}
	}
}

with(player_id)
{
	//sprite syncer
	var startInd = get_window_value( other.storedAttack, other.window+1, AG_WINDOW_ANIM_FRAME_START);
	var frameOffset = get_window_value( other.storedAttack, other.window+1, AG_WINDOW_ANIM_FRAMES)
		* (other.window_timer/get_window_value( other.storedAttack, other.window+1, AG_WINDOW_LENGTH));
	other.image_index = startInd + frameOffset;
}//*/

//increment windows
//set destruction as well

//play sound effects
if window_timer == 0
{
	with(player_id)
	{
		var soundID = get_window_value(other.storedAttack, other.window+1, AG_WINDOW_SFX);
		if get_window_value(other.storedAttack, other.window+1, AG_WINDOW_HAS_SFX)
		{
			sound_play(soundID);
			print(other.window+1);
		}
	}
}

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
		print("Clone Died at end of Attack");
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
			var f = spawn_hit_fx(other.x,other.y, splsh);
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