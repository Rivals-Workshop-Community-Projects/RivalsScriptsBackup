// article1_update

if (replacedcount > maxarticles)
	shoulddie = true;

//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)
if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2))
{
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
	shoulddie = true;
}

//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2
if (player_id.killarticles && state != 2)
{
	state = 2;
	state_timer = 0;
}

switch (state)
{
	case 0: // Idle
		image_alpha = 0.4;
		if (size < sizelimit) // grow
		{
			if (size == 125){
				size += 3;
			}
			else{
				size += 5;
			}
		}
		// spawn particles for everyone
		if (state_timer % 12 == 0) with (oPlayer) if (point_distance(x,y-char_height/2,other.x,other.y) <= other.size) with (other.player_id)
		{
			spawn_hit_fx(other.x - 30 + random_func(other.player, 60, 0),
						floor(other.y - other.char_height/2 - 30 + random_func(other.player+1, 60, 0)),
						heartparticle);
		}
		if (state_timer >= 60 * 10 || shoulddie || player_id.state == PS_RESPAWN) // lasts for 15 seconds
		{
			state = 2;
			state_timer = 0;
		}
		break;
	
	case 2: //State 2: Dying
		size -= 10;
		if (size < 0)
			size = 0;
		if (size == 0)
		{
			if (player_id.singleton_field == self)
				player_id.singleton_field = noone;
			player_id.killarticles = false;
			instance_destroy();
			exit;
		}
		break;

	case 3: //State 3: Immediately perish
		x += ((player_id.hit_player_obj.x + 0) - x)/10;
		y += ((player_id.hit_player_obj.y - 30) - y)/10;
		size -= 5;
		if (size <= 0)
		{
			if (player_id.singleton_field == self) player_id.singleton_field = noone;
			player_id.killarticles = false;
			instance_destroy();
			exit;
		}
		break;

	case 9:
		hsp = spr_dir * 4;
		if (shoulddie)
		{
			state = 2;
			state_timer = 0;
		}
		break;
}

// anims
if (state_timer % 20 == 0)
{
	++image_index;
	image_index %= 2;
}
image_xscale = 1/128*floor(size);
image_yscale = 1/128*floor(size);

++state_timer;