switch(anger_state){
    case 0:
    if(hud_timer < 20){
        hud_timer++;
    }else{
        hud_timer = 0;
    }
    break;
    case 1:
    if(hud_timer < 25){
        hud_timer++;
    }else{
        hud_timer = 0;
    }
    break;
    case 2:
    if(hud_timer < 25){
    hud_timer++;
        
    }else{
        hud_timer = 0;
    }
    break;
}

draw_sprite_ext(sprite_get("hud_" + string(anger_state)), hud_timer * 0.2, temp_x + 4, temp_y - 54, 2, 2, 0, c_white, 1);
draw_sprite_stretched_ext(sprite_get("hud_bar_" + string(anger_state)),0, temp_x + 16, temp_y - 36, (anger_value / 1000) * 132, 18, c_white, abs(bar_glow));
draw_sprite_ext(sprite_get("special_led"), 0, temp_x + 140, temp_y - 50, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("special_led"), 0, temp_x + 126, temp_y - 50, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("special_led"), 0, temp_x + 112, temp_y - 50, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("fspecial_led"), 0, temp_x + 140, temp_y - 50, 2, 2, 0, c_white, (move_cooldown[AT_FSPECIAL] = 0? 1: 0));
draw_sprite_ext(sprite_get("dspecial_led"), 0, temp_x + 126, temp_y - 50, 2, 2, 0, c_white, (move_cooldown[AT_DSPECIAL] = 0? 1: 0));
draw_sprite_ext(sprite_get("uspecial_led"), 0, temp_x + 112, temp_y - 50, 2, 2, 0, c_white, (move_cooldown[AT_USPECIAL] = 0? 1: 0));
draw_sprite_stretched_ext(sprite_get("hud_bar_1"), 0, temp_x + 56, temp_y - 12, (wall_gauge / 1000) * 92, 2, c_white, 1);

/*debug utility
draw_debug_text( 200, 10, "state : " + get_state_name(state));
draw_debug_text( 200, 25, "state timer : " + string(state_timer));
draw_debug_text( 200, 40, "attack : " + string(attack));
draw_debug_text( 200, 55, "window : " + string(window));
draw_debug_text( 200, 70, "window timer : " + string(window_timer));
draw_debug_text(  15, 10, "hsp: " + string(hsp));
draw_debug_text(  15, 25, "vsp: " + string(vsp));
draw_debug_text(  15, 40, "img ind: " + string(image_index));
draw_debug_text(  15, 55, "spr_dir: " + string(spr_dir));
draw_debug_text(  15, 70, "x: " + string(x));
draw_debug_text(  15, 85, "y: " + string(y));
draw_debug_text(  15, 100, "free: " + string(free));
draw_debug_text(  15, 115, "attack pressed : " + string(attack_pressed));
draw_debug_text(  15, 130, "attack down : " + string(attack_down));
draw_debug_text(  15, 145, "joy_dir : " + string(joy_dir));
draw_debug_text( 600, 10, "FPS : " + string(fps_real));
