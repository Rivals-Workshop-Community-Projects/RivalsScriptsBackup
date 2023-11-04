if point_distance(0, 0, old_hsp, old_vsp) > 12
{
    sound_play(sound_get("sfx_ut_hurt"), false, noone, 0.8, 0.95 + (random_func(2 + y mod 10, 10, true) / 100));
}

if (prev_state == PS_ATTACK_GROUND && attack == AT_TAUNT){
    suppress_stage_music( 1, 1 );
    sound_stop(tune);
    sound_stop(sound_get("mus_chill"));
}

dspecial_used = false;
fspecial_used = false;
fspecial_usage_cooldown = 0
dspecial_placement_cooldown = 0;
move_cooldown[AT_FSPECIAL] = 0;
move_cooldown[AT_DSPECIAL] = 0;