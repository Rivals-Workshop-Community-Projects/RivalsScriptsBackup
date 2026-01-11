///#args state
user_event(0);
if state == PS_AIR_DODGE{
	air_dodge_sound = sound_get("CharSFX_Dash_v" + string(random_func(1, 4, 1) + 1));
	stop_sfx = 1;
}
if state == PS_JUMPSQUAT jump_sound = sound_get("CharSFX_Jump_v" + string(random_func(2, 11, 1) + 1));
if state == PS_DOUBLE_JUMP djump_sound = sound_get("CharSFX_Jump_v" + string(random_func(3, 11, 1) + 1));