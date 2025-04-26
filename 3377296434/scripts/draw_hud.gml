//draw_debug_text(temp_x-80, temp_y-20, string(get_state_name(state)));

shader_start();
var col = c_white;

if (!on_brick){
    col = c_gray;
}

if (state_cat == SC_HITSTUN && on_brick || state == PS_RESPAWN && on_brick || state == PS_DEAD && on_brick || state == PS_TUMBLE && on_brick || instance_exists(brick) && brick.state == 2){
    draw_sprite_ext(sprite_get("brick_hud_hurt"), 0, temp_x + 26, temp_y - 32, 1, 1, 0, col, 1);
} else draw_sprite_ext(sprite_get("brick_hud"), 0, temp_x + 26, temp_y - 32, 1, 1, 0, col, 1);
shader_end();