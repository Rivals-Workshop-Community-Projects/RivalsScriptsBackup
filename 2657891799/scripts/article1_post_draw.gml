//article1_post_draw

//indicator
draw_sprite_ext(sprite_get("indicator"), 1, x, y - 80, 1, 1, 0, get_player_hud_color(player_id.player), 1);

if state == PS_DEAD {
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_red, (dcos(state_timer*25)+2)/3)
}


gpu_set_alphatestenable(true);
gpu_set_fog(1, c_white, 0, 1);
if hitstop draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_white, 0.5)
gpu_set_fog(0, c_white, 0, 0);
gpu_set_alphatestenable(false);