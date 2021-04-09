//noises
if (voice_lines && !rolling){
	
if (sprite_index = sprite_get("bighurt"))
{
		var sfxindex;
		sfxindex = random_func( 1, 2, true ) + 1;
		
		if sfxindex = 2
		{
		user_event(0);
		sound_play(sound_get("bighurt1"));
		}	
}

else
{
		var sfxindex;
		sfxindex = random_func( 1, 8, true ) + 1;
		
		if sfxindex < 5
		{
		user_event(0);
		sound_play(sound_get("hurt" + string(sfxindex)));
		}	
}

}
else if state_timer = 1
{
attacksfxindex = random_func( 1, 2, true ) + 1;
	
	if window = 1 && window_timer = 10 && !hitpause
	{
	user_event(0);
	sound_play(sound_get("rolling" + string(attacksfxindex)));
	}
}