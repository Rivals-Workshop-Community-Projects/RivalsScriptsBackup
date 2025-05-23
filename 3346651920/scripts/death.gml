// called when the character gets KO'd

// Remove slender sickness from all players if you are out of the game.
// Slender sickness remains on players otherwise as intended.
if (get_player_stocks(player) == 1)
{
	with(oPlayer)
	{
		if (slender_haunt == other.id && slender_haunt_timer > 0)
		{
			slender_haunt = -4;
			slender_haunt_timer = 0;
		}
	}
}

// Specialty sound effects 
switch (get_player_color(player))
{
	case 20:
	//scarymaze
	sound_play(
			sound_get("z_death_scarymaze2_jumpscare_warning_please"),
			false, noone, 1);
	break;
	
	case 21:
	//ender
	sound_play(sound_get("z_death_ender"));
	break;
	
	case 22:
	//teletubby
	sound_play(sound_get("z_death_tubbies"));
	break;
}

