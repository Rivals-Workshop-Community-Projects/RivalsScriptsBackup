if(ringcooldown <= 0 && enemy_hitboxID.kb_value != 0){
    create_hitbox(AT_DTILT, 2, round(x), round(y-40));
    create_hitbox(AT_DTILT, 2, round(x+random_func(-18,18,true)), round(y-30));
    ringcooldown = 20;
}
if(!enemy_hitboxID.player_id == self || enemy_hitboxID.player_id == self && random_dash == 6){
    sound_stop(airhorn_sfx)
}
sound_stop(spin_sound)

if("sanic_uspec_count" in enemy_hitboxID.player_id && enemy_hitboxID.player_id != self && !trigger_warning){
    if(get_player_color(enemy_hitboxID.player_id.player) == 0 && get_player_color(player) == 12 && enemy_hitboxID.attack == AT_FTILT){
        sound_stop(sound_get("sonic_slap"));
        sound_stop(sound_get("slap"));
        sound_play(sound_get("sonic_slap"));
        just_played_scream = true;
    }
}

curspd_override = false;