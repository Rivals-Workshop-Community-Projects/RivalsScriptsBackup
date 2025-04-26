hud_col = get_player_hud_color(player); 

switch (state) {
    case 1:
        spotlight = draw_sprite_ext(sprite_get("a_spotlight_area"), 0, x, y, 1, 1, 0, c_white, 0.3 - (dsin(state_timer) * 0.25 /10));
        spotlight_outline = draw_sprite_ext(sprite_get("a_spotlight_outline"), 0, x, y, 1, 1, 0, hud_col, 0.4);
        //spotlight.depth = -10;
        discoball = draw_sprite_ext(sprite_get("a_discoball"), state_timer * 6 / state_end, x, y-288, 1, 1, 0, c_white, 1);
        //discoball.depth = 30;
    break;
    case 98:
        spotlight = draw_sprite_ext(sprite_get("a_spotlight_area"), 0, x, y, 1, 1, 0, c_white, 0.3 - (state_timer / 20));
        //spotlight.depth = -10;
    break;
}

if (get_match_setting(SET_HITBOX_VIS) && state == 1) {
    draw_sprite_ext(collision_mask_index, 0, x, y, spr_dir, 1, 0, c_white, 0.4);
}

