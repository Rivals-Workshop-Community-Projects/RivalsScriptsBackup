muno_event_type = 4;
user_event(14);
shader_start();
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
if (attack == AT_USPECIAL && window == 2){
    var uspecial_angle = darctan2(-vsp, hsp);
    if (times_through < 3){
    if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) / 2 && uspecial_frame == 0){
        uspecial_frame = 1;
    } else if (window_timer == 1 && uspecial_frame == 1){
        uspecial_frame = 0;
    }
    } else if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) / 2 && uspecial_frame != 3){
        uspecial_frame = 3;
    }
    draw_sprite_ext(sprite_get("uspecial_flying"), uspecial_frame, x - 14 , y - 28, 1, 1, uspecial_angle, c_white, 1);
}
}
shader_end();