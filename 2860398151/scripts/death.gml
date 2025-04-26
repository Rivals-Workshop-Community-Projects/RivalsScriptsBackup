// called when the character gets KO'd

move_cooldown[AT_NSPECIAL] 		= 0;
move_cooldown[AT_NSPECIAL_AIR] 	= 0;

move_cooldown[AT_FSPECIAL] 		= 0;
move_cooldown[AT_USPECIAL] 		= 0;
move_cooldown[AT_DSPECIAL] 		= 0;

if (energy_meter > 50)
{
	energy_meter = 50;
}

if (energy_meter < 50)
{
	energy_meter = 0;
}

if (!muted)
{
	if (get_player_stocks(player) == 1) 
	{
		sound_play(sound_get("Kodiak Up heavy scream"), false, noone, 2);
	}	
}