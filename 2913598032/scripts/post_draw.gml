//
//draw_debug_text( x, y, string(can_drop_item) );
if (attack == AT_DSTRONG && state == PS_ATTACK_GROUND) {
    if (window == 5) {
            //spawn_hit_fx( x + 1 * spr_dir, y, vfx_sparkles );
            //draw_sprite(sprite_get("sparkles"), window_timer / 4, x, y);
            draw_sprite_ext(sprite_get("sparkles"), window_timer / 4, x, y, 1, 1, 0, c_white, 0.75)
        }
}