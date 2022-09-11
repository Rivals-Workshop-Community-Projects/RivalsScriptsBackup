//	got_hit - called when you're hit by a hitbox

if (hitpause == true)
{
	var paintrain = random_func(0, 4, true);
	switch(paintrain) 
	{
		//nothing :U
		case 0:
		sound_play(sound_get("Kodiak Pain 1"));
		break;

		case 1:
		sound_play(sound_get("Kodiak Pain 2"));
		break;

		case 2:
		sound_play(sound_get("Kodiak Pain 3"));
		break;
	}
	
	sound_stop(sound_get("sfx_auracharged"));
	sound_stop(sound_get("Dance Jingle"));
}

old_hsp *= 0.70;
old_vsp *= 0.70;

move_cooldown[AT_USPECIAL] = 0;