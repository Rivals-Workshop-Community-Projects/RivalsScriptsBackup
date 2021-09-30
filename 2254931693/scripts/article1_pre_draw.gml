switch(state){
    case PS_IDLE:
        if (point_distance(x, y, player_id.x, player_id.y) < 76 && (player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR)){
        draw_sprite_ext(sprite_get("frog_idle_outline"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
        }
        break;
}

if (state != PS_HITSTUN && (get_local_setting(SET_HUD_SIZE) > 0 || get_local_setting(SET_HUD_NAMES) > 0) ){
draw_sprite_ext( sprite_get("frogindicator"), 0, x - 16, y - 72, 1, 1, 0, player_id.indicator_color, 1 );
}
