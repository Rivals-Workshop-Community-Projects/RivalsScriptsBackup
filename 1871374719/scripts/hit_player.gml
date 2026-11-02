if (attack == AT_FSPECIAL)
{
	donotlower = 1;
	//destroy_hitboxes();
}
if (attack == AT_USTRONG)
{
	sound_stop(sound_get("flowery_imfalling"))
	sound_stop(sound_get("flowery_itsme"))
	sound_stop(sound_get("flowery_flowery"))
	sound_stop(sound_get("flowery_glue"))
	sound_stop(sound_get("flowery_yes"))
}

// Secret Taunts
if (attack == AT_USPECIAL && taunt_pressed && window == 2)
{
	sound_play( sound_get( "sfx_celebrate" ) );
}
if (attack == AT_DAIR && taunt_pressed && window == 5)
{
	sound_play( sound_get( "sfx_celebrate" ) );
	clear_button_buffer( PC_TAUNT_PRESSED );
}

if (attack == AT_DATTACK && (window == 3 || (window == 4 && window_timer < 9)))
{
	if celebrate_timer > 0
	{
		celebrate_pitch = celebrate_pitch + 0.2;
		celebrate_timer = 90;
	}
	else
	{
		celebrate_timer = 90;
		celebrate_pitch = 1;
	}
	sound_play( sound_get("sfx_celebrate"), false, noone, 1, celebrate_pitch );
}
