if invinc_timer != 0 or (state == PS_ATTACK_GROUND and state_timer < attack_invinc_threshold and attack != 4 and attack != 5) {
    var angle = 0;
    gpu_set_fog(true, player_id.decay_color_rbg, 1, 0)
        repeat 4 {
            draw_sprite_ext(minion_sprite_index, minion_image_index, x + round(lengthdir_x(2,angle)), y+minion_offset_y+round(lengthdir_y(2,angle)), spr_dir, 1, 0, c_white, 0.5);
            angle += 90;
        }
    gpu_set_fog(false, player_id.decay_color_rbg, 0, 0)
}  

draw_sprite_ext(minion_sprite_index, minion_image_index, x, y+minion_offset_y, spr_dir, 1, 0, state == PS_HITSTUN_LAND ? c_gray : c_white, 1);

if state == PS_BURIED and invinc_timer != 0 {
    draw_sprite_ext(minion_sprite_index, minion_image_index, x, y+minion_offset_y, spr_dir, 1, 0, c_gray, 0.6*darken_timer);
}

if disabled_timer > 0 {
    draw_sprite_ext(minion_sprite_index, minion_image_index, x, y+minion_offset_y, spr_dir, 1, 0, c_dkgray, lerp(0.6, 0, disabled_timer/disabled_timer_max));
}

var box_width = 48;
var inner_box_width = 44;
var box_height = 10;
var inner_box_height = 6;
var box_offset_y = -150;

if !(state == PS_DEAD or state == PS_CRYSTALIZED) { 
    draw_rectangle_color(x - (box_width/2) , y - (box_height/2) + box_offset_y, x + (box_width/2) , y + (box_height/2) + box_offset_y, c_black, c_black, c_black, c_black, false)
}

if (get_match_setting(SET_HITBOX_VIS)) {
    draw_sprite_ext(mask_index, 0, x, y, image_xscale, 1, 0, c_blue, 0.5);
    
    draw_set_alpha(0.5)
    draw_rectangle_color(x + (grab_rectangle.top.x*spr_dir), y + (grab_rectangle.top.y), x + (grab_rectangle.bottom.x*spr_dir), y+ (grab_rectangle.bottom.y), c_blue, c_blue,c_blue,c_blue, false)
    draw_set_alpha(1)
}

var color = get_gameplay_time() mod 6 > 2 ? c_dkgray : c_ltgray;
if incubation > player_id.minion_incubation_spawn_threshold {
    color = c_white
}

if heal_effect != -1 {
    color = merge_color(color, player_id.decay_color_rbg, heal_effect)
}

if incubation <= 0 or state == PS_DEAD or state == PS_CRYSTALIZED exit;

draw_rectangle_color(x - (inner_box_width/2) , y - (inner_box_height/2) + box_offset_y, x + lerp(-inner_box_width/2, inner_box_width/2, incubation_to_show / incubation_max), y + (inner_box_height/2) + box_offset_y, color, color, color, color, false)