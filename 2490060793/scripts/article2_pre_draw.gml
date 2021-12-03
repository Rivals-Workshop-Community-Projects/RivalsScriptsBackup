//article2_pre_draw

//screen darken
with player_id if attack == AT_FSPECIAL_2 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
    
    draw_set_alpha(other._alpha)
    draw_rectangle_color(0,0,2000,2000, c_black,c_black,c_black,c_black, false)
    draw_set_alpha(1)
    
    if window >= 6 && other.draw_zoom {
        draw_sprite_ext(sprite_get("killzoom_bg"), 0, x+80*spr_dir, y-100, other._scale1, 10, 0, c_white, other._alpha)
        draw_sprite_ext(sprite_get("killzoom_layer1"), 0, x+80*spr_dir, y-100, other._scale1, other._scale1, 0, c_white, other._alpha)
        draw_sprite_ext(sprite_get("killzoom_layer2"), 0, x+80*spr_dir, y-100, other._scale2, other._scale2, 0, c_white, other._alpha)
        draw_sprite_ext(sprite_get("killzoom_layer3"), 0, x+80*spr_dir, y-100, other._scale3, other._scale3, 0, c_white, other._alpha)
    }
}