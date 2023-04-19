//FIELD SYSTEM ARTICLE1_UPDATE.GML (by Delta Parallax)
//This is where all of the logic for the field goes. Oh boy.

//Update the radius and the drawn radius.
//The lerp makes it "lag behind", in a sense, thus achieving a nice smoothing effect.
radius = clamp(radius - (should_decay * fvars.decay), fvars.bounds[0], fvars.bounds[1]);
shown_radius = abs(radius - shown_radius) < 2 ? radius : lerp(shown_radius,radius,fvars.radius_smooth_amount);

//Reset the random variable every few frames.
if (state_timer mod 3 == 0)
{
	rand = random_func(6,36,true);
}

//Update position to match the stuck player
if (instance_exists(stuck_player) and stuck_player.state != PS_DEAD and stuck_player.state != PS_RESPAWN)
{
	x = stuck_player.x + stuck_player.hsp
	y = stuck_player.y + stuck_player.vsp - (stuck_player.char_height/2)
}

//OH BOY LOGIC
with (player_id)
{
	//LITERALLY JUST HEARTBRAKE'S OLD DETECTION SYSTEM
	var xx, yy, diff;
	xx = other.x;
	yy = other.y;
	
	//update xx and yy to be within the bounding box
	if (xx < bbox_left)
	{
		xx = bbox_left
	}
	else if (xx > bbox_right)
	{
		xx = bbox_right
	}
	
	if (yy < bbox_top) 
	{
		yy = bbox_top
	}
	else if (yy > bbox_bottom)
	{
		yy = bbox_bottom
	}
	
	diff = sqrt( sqr(xx-other.x) + sqr(yy-other.y) );
	
	//Check whether you are in the field and update variables + play/stop sounds accordingly.
	if (diff <= other.radius)
	{
		player_field_vars.in_field = true;
		if player_field_vars.field_soundobj == noone and player_field_vars.field_sound_debug_toggle player_field_vars.field_soundobj = sound_play(sound_get("infield"),true,noone,1.5,1);
	}
	else
	{
		player_field_vars.in_field = false;
		if player_field_vars.field_soundobj != noone
		{
			sound_stop(player_field_vars.field_soundobj);
			player_field_vars.field_soundobj = noone;
		}
	}
	
	
}

//Increase the state_timer since we need that for the field.
state_timer++;

//DEATH CONDITIONS:
//1) If the stuck player is out of the match or is respawning, despawn the field.
if (stuck_player.state == PS_DEAD or stuck_player.state == PS_RESPAWN)
{
	fvars.field_obj = noone;
}

//2) If the radius is at its minimum, add to the death timer until it reaches a threshold, at which point despawn the field.
//   Contrastingly, if the radius is not at its minimum, reset the death timer.
if radius == fvars.bounds[0]
{
	death_timer++;
	if death_timer >= fvars.despawn_time
	{
		fvars.field_obj = noone;
	}
}
else
{
	death_timer = 0;
}

//Destroy self when no longer needed.
if (fvars.field_obj != self) instance_destroy();