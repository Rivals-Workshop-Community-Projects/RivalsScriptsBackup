// Preeee
if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR{
    if attack == AT_FSTRONG{
        shader_start();
        if window == 1 and window_timer < get_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH) - 6{
            if spr_dir == 1{
                draw_sprite_ext(sprite_get("clone_spawn"), window_timer / 2, x+12 , y - 8, 2, 2, 0, c_white, 1);
            } else {
                draw_sprite_ext(sprite_get("clone_spawn"), window_timer / 2, x-12 , y - 8, -2, 2, 0, c_white, 1);
            }
        }
        if ((window == 1 and window_timer >= get_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH) - 6) or (window == 2 and window_timer < 2)){
            if spr_dir == 1{
                draw_sprite_ext(sprite_get("clone_spawn"), 5, x+12 , y - 8, 2, 2, 0, c_white, 1);
            } else {
                draw_sprite_ext(sprite_get("clone_spawn"), 5, x-12 , y - 8, -2, 2, 0, c_white, 1);
            }
        }
        shader_end();
    }
}