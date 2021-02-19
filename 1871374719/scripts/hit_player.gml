if (attack == AT_FSPECIAL)
{
	donotlower = 1;
	destroy_hitboxes();
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
if (attack == AT_DATTACK && taunt_pressed && window == 3 && state == PS_ATTACK_AIR)
{
	sound_play( sound_get( "sfx_celebrate" ) );
	clear_button_buffer( PC_TAUNT_PRESSED );
}