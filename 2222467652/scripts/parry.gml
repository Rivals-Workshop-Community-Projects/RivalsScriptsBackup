if (enemy_hitboxID.type == 1){
    if (!hit_player_obj.birdluigifire){ 
        sound_play(asset_get("sfx_burnapplied"));
    }
    hit_player_obj.birdluigifire = true;
    if (hit_player_obj.birdluigifire_timer < 85){
        hit_player_obj.birdluigifire_timer = 85;
    }
    hit_player_obj.birdluigifire_id = id;
    hit_player_obj.outline_color = [round(get_color_profile_slot_r(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(player), 0) * 0.5)]
}