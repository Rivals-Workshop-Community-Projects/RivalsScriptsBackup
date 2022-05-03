openmenu = false;
move_cooldown[AT_USPECIAL] = 0;
if((attack == AT_UTILT || attack == AT_FAIR || attack == AT_JAB) && soft_armor > 0 && instance_exists(hit_player_obj)){
    create_hitbox(AT_UTILT, 2, hit_player_obj.x - 30, hit_player_obj.y - 30);
    sound_play(sound_get("melee_block"));
}

sound_stop(sound_get("ball_roll"));
sound_stop(sound_get("beam_wide_charged"));
sound_stop(sound_get("beam_normal_charged"));
sound_stop(sound_get("beam_plasma_charged"));
sound_stop(sound_get("beam_wave_charged"));


