//draw_debug_text(x,y,"HELLO, GORDON! "+string(timer))
/*with obj_stage_article if num == 3 && (other.active_scene == 0 || cur_scene == other.active_scene) {
    draw_set_alpha(1);
} draw_set_alpha(.2);*/
// draw_set_alpha(1);
if debug {
    depth = -100;
    if !(active_scene == 0 || (active_scene > 0 && cur_scene >= active_scene) || (active_scene < 0 && cur_scene <= abs(active_scene))) draw_set_alpha(.2);
    switch trigger_shape {
        case 0:
            draw_rectangle_color(x,y,x+trigger_w*spr_dir,y+trigger_h,debug_color,debug_color,debug_color,debug_color,c_black);
            break;
        case 1:
            draw_circle_color(x,y,trigger_w*spr_dir,debug_color,debug_color,c_black);
            break;
        case 3:
            break;
        default:
        	draw_set_alpha(0.8);
            draw_sprite_ext(mask_index,image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
            break;
    }
    draw_set_alpha(1);
    draw_debug_text(floor(x),floor(y), string(active_scene));
}

if hold_up with collis_obj {
    //draw_debug_text(x,y,"TESTING PROMPT");
    draw_sprite(asset_get("lead_arrow_spr"),0,x,y+10);
    // draw_sprite(other.dir_arrow,0,x,y-char_height-50);
    // draw_sprite_ext(other.dir_arrow,0,x-64,y-char_height/2,1,1,90,c_white,0.2);
    // draw_sprite_ext(other.dir_arrow,0,x,y+20,1,1,180,c_white,0.2);
    // draw_sprite_ext(other.dir_arrow,0,x+64,y-char_height/2,1,1,270,c_white,0.2);
}


if !debug_info exit; //Debug info; check user_event2 draw_debug_info
debug_pos = grid_to_cell([x+64,y+64]);
draw_debug_text(floor(x),floor(y),string(id)+"
["+string(debug_pos[1][0])+","+string(debug_pos[1][0])+"]:["+string(floor((debug_pos[0][0])/16))+","+string(floor((debug_pos[0][1])/16))+"]:["+string((debug_pos[0][0]) % 16)+","+string((debug_pos[0][1]) % 16)+"]");
draw_rectangle_color(x,y,
                    x+trigger_w,y+trigger_h,
                    c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,true);


#define grid_to_cell(_pos) //Translate basegame grid system coordinates to in cell coordinates
_pos = [floor(_pos[0]),floor(_pos[1])];
with room_manager {
	_pos = [_pos[0] - render_offset[0],_pos[1] - render_offset[1]];

    return [[(abs(_pos[0]) % ((cell_dim[0]-grid_offset)*cell_size)),
		    (abs(_pos[1]) % ((cell_dim[1]-grid_offset)*cell_size))],
		   [floor(_pos[0]/((cell_dim[0]-grid_offset)*cell_size)),
			floor(_pos[1]/((cell_dim[1]-grid_offset)*cell_size))]];
}