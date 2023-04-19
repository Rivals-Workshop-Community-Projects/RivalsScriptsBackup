if (instance_exists(wheel)) {
    if (debug_text) draw_debug_text(wheel.x, wheel.y - 120, string(wheel.spin_angle));
    if (wheel.bumper_state == 2) {
        // Man why was this here to begin with
        //wheel.spin_angle += wheel.spin_timer div 15;
        if (debug_text) draw_debug_text(wheel.x, wheel.y - 100, string(wheel.spin_timer div 15));
        shader_start();
        draw_sprite_ext(wheel.spr_point, 0, wheel.x - 3, wheel.y - 31, 1, 1, wheel.spin_angle, c_white, 1);
        shader_end();
    }
    else if (wheel.bumper_state == 0 && wheel.sprite_index != wheel.spr_idle) {
        shader_start();
        draw_sprite_ext(wheel.spr_point, 0, wheel.x - 3, wheel.y - 31, 1, 1, wheel.spin_angle, c_white, 1);
        shader_end();
    } 
    with (wheel) {
        if (vfx_show && vfx_timer != vfx_max) {
            var scale_mod = vfx_timer * 0.1
            var alpha_mod = abs((vfx_timer - 10) * 0.1);
            //Starting the shader here crashes the game for some reason
            //shader_start();
            draw_sprite_ext(spr_back, 1, x, y, 1 + scale_mod, 1 + scale_mod, 1, c_white, alpha_mod);
            //shader_end();
            vfx_timer++;
        }
        else if (vfx_timer == vfx_max) {
            vfx_show = false;
            vfx_timer = 0;
        }
    }
}

if (state == PS_ATTACK_GROUND && attack == AT_TAUNT_2) {
    var alpha_screen = clamp(state_timer/50 -1, 0, 0.75);
    draw_set_alpha(alpha_screen);
    draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
}