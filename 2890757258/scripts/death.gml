// death.gml

move_cooldown[AT_NSPECIAL] = 0;
move_cooldown[AT_FSPECIAL] = 0;

magic_meter = 50;

if (instance_exists(stormy_puff))
{	
	spawn_hit_fx(stormy_puff.x-50, stormy_puff.y-50, 20);
	instance_destroy(stormy_puff);
}

if (!muted)
{
	if (get_player_stocks(player) == 1) 
	{
		sound_play(sound_get("sfx_shantae_death"), false, noone, 0.75);
	}	
}