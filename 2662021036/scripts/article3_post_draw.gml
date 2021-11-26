//article1_update




if ((get_local_setting(SET_HUD_SIZE) > 0 || get_local_setting(SET_HUD_NAMES) > 0)){
    
    if (state = PS_IDLE){
draw_sprite_ext( sprite_get("_pho_cooldown_arrow"), 0, x - 4, y - 42, 1, 1, 0, player_id.indicator_color, 1 );
}

    if (state = PS_JUMPSQUAT || state = PS_CROUCH){
draw_sprite_ext( sprite_get("_pho_cooldown_arrow"), 0, x - 4, y - 58, 1, 1, 0, player_id.indicator_color, 1 );
}


}


    if (state = PS_IDLE){
draw_sprite_ext(sprite_get("meter"), 0, x - 30, y - 50, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("meter_white"), 0, x - 28, y - 48, (seed_health / max_seed_health), 1, 0, c_white, 1);
}

    if (state = PS_JUMPSQUAT || state = PS_CROUCH){
draw_sprite_ext(sprite_get("meter"), 0, x - 30, y - 66, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("meter_white"), 0, x - 28, y - 64, (seed_health / max_seed_health), 1, 0, c_white, 1);        
        
    }
