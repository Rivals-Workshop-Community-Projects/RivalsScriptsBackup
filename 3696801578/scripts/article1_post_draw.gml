
if  get_match_setting(SET_HITBOX_VIS) {
draw_debug_text(x,y,`window: ${window}, window_timer: ${window_timer}`)
draw_debug_text(x,y+16,`state: ${get_state_name(state)}`)
}
// draw_debug_text(x,y+32,`grav: ${grav}`)


// if state == PS_RESPAWN {
//     var dist = point_distance(x, y, stretch_position.x, stretch_position.y)
//     var dir = point_direction(x, y, stretch_position.x, stretch_position.y)
    
//     var width = 0
//     //var width = (dist / 1000) - 0.1
    
//     draw_sprite_ext(sprite_index, image_index, floor(x),floor(y-6), spr_dir, image_yscale, image_angle, c_white, 1)
    
//     // if window != 0 {
//     //     if ds_list_size(stretch_positions) < 2 exit
        
//     //     for (var j = 0; j < ds_list_size(stretch_positions)-1; j++) {
//     //         if j < current_stretch_position continue;
            
//     //         draw_line_width_color(stretch_positions[| j].x, stretch_positions[| j].y, stretch_positions[| j+1].x, stretch_positions[| j+1].y, 6, c_red, c_red)
//     //     }
        
//     // }
//     // if window != 0 {
//     //     draw_sprite_ext(sprite_get("jake_article_stretch_middle"), 0, floor(x),floor(y-6), dist, width+1, dir, c_white, 1)
//     // }
// }