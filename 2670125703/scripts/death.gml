// death.gml

move_cooldown[AT_NSPECIAL] = 0;
move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_DSPECIAL] = 0;

if (get_player_stocks( player ) == 1) 
{
	sound_play(sound_get("sfx_regordeath"), false, noone, 2);
}