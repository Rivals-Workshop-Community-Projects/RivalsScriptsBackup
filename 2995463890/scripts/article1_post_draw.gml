// if instance_exists(plat_to_clamp) {
//     draw_rectangle_color(get_instance_x(plat_to_clamp)-20, get_instance_y(plat_to_clamp)-20, get_instance_x(plat_to_clamp)+20, get_instance_y(plat_to_clamp)+20, c_red, c_red, c_red, c_red, false)
// }

if get_match_setting(SET_HITBOX_VIS) {
    if state == PS_IDLE {
        var box = state_info[state].collision_box;
        
        draw_set_alpha(0.5)
        draw_rectangle_color(x+box.x1, y+box.y1, x+box.x2, y+box.y2, c_blue, c_blue, c_blue, c_blue, false)
        draw_set_alpha(1)
    }
    
    draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, 0.5)
}