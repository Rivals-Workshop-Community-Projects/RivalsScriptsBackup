if "current_bomb_powder" not in self exit
var xx, yy;
xx = temp_x+12
yy = temp_y-14

draw_sprite(sprite_get("hud_box_cut"), 0, temp_x+26, temp_y)

i=0;
gpu_set_fog(1,c_white,0,1)
repeat 4 {
    var len_x, len_y;
    len_x = lengthdir_x(2,i);
    len_y = lengthdir_y(2,i);
    draw_sprite(sprite_get("powder_hud_custom_small"), current_bomb_powder, xx+len_x, yy+len_y)

    i+=90
}
gpu_set_fog(0,c_white,0,1)

draw_sprite(sprite_get("powder_hud_custom_small"), current_bomb_powder, xx, yy)
draw_sprite(sprite_get("hud_bomb_names"), current_bomb_powder, xx+18, yy+4)
//debug stats for... well, debuging. 

// draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
// draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
// draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
// draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp))
// draw_debug_text(temp_x, temp_y-80,"Free: " + string(free))
//further y positions should go up in multiples of 16 from 64
