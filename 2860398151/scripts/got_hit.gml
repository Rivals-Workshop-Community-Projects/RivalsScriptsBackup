//	got_hit - called when you're hit by a hitbox

move_cooldown[AT_USPECIAL] = 0;

old_hsp 	*= 0.70;
old_vsp 	*= 0.70;

if (grabbed_player_obj != noone)
{
    grabbed_player_obj 			= noone;
	grabbed_player_obj.hitstop 	= 0;
}

if (!muted)
{
	if (hitpause == true)
	{
		with (self)
		{
			var paintrain = random_func(0, 7, true);
			switch(paintrain) 
			{
				case 0:
				sound_play(sound_get("Kodiak Pain 1"));
				break;

				case 1:
				sound_play(sound_get("Kodiak Pain 1"), false, noone, 1, 0.9 + random_func(1, 3, true)/20);
				break;

				case 2:
				sound_play(sound_get("Kodiak Pain 2"));
				break;

				case 3:
				sound_play(sound_get("Kodiak Pain 2"), false, noone, 1, 0.9 + random_func(1, 3, true)/20);
				break;

				case 4:
				sound_play(sound_get("Kodiak Pain 3"));
				break;

				case 5:
				sound_play(sound_get("Kodiak Pain 3"), false, noone, 1, 0.9 + random_func(1, 3, true)/20);
				break;
			}
			
			sound_stop(sound_get("Aura Chargin"));	
			sound_stop(sound_get("Dance Jingle"));
		}
	}
}