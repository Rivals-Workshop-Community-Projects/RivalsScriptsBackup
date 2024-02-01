//article1_post_draw


//draw_rectangle_color(x - segment_width/2, y, x + segment_width/2, y + 10, c_white,c_white,c_white,c_white, false)
//draw_rectangle_color(x - segment_width/2, y, x + segment_width/2, y + 10, c_black,c_black,c_black,c_black, true)

//draw_rectangle_color(x_left, y, x_right, y + 10, c_white,c_white,c_white,c_white, false)
//draw_rectangle_color(x_left, y, x_right, y + 10, c_black,c_black,c_black,c_black, true)

var offset_index = (((surface_offset_x - 16) mod 128) / 32)
var player_col = get_player_hud_color(player_id.player)

for (var i = 0; i < array_length(segment_array); i++) {
    if segment_array[i] != undefined && segment_array[i] != 0 {
        var seg = segment_array[i]
        var seg_timer = seg.timer
        var seg_state = seg.state
        
        if player_id.in_ditto {
            draw_sprite_general(sprite_get("fault"), 2, (i*32) mod 128, 0, 32, 64, surface_x + (i*32), y - 64 - 2, 1, 1, 0, player_col,player_col,player_col,player_col, 1)
        }
        
        draw_sprite_general(sprite_get("fault"), 0, (i*32) mod 128, 0, 32, 128, surface_x + (i*32), y - 64, 1, 1, 0, c_white,c_white,c_white,c_white, 1)
        //draw_debug_text(surface_x + i*32, y - 20, string(seg_timer))
        //draw_debug_text(surface_x + i*32, y + 20, string(i))
        
        if seg_state == 0 && seg_timer <= 20 {
            draw_sprite_general(sprite_get("fault"), 1, (i*32) mod 128, 0, 32, 128, surface_x + (i*32), y - 64, 1, 1, 0, c_white,c_white,c_white,c_white, (20-seg_timer)/20)
        }
    }
}


//draw_sprite_general(sprite_get("fault"), 0, offset_index*32, 0, 32, 128, x - 16, y - 64, 1, 1, 0, c_white,c_white,c_white,c_white, 1)
/*
if timer <= 20 {
    draw_sprite_general(sprite_get("fault"), 1, offset_index*32, 0, 32, 128, x - 16, y - 64, 1, 1, 0, c_white,c_white,c_white,c_white, (20-timer)/20)
}
*/

//draw_debug_text(x, y + 20, string(fault_left))
//draw_debug_text(x, y - 20, string(fault_right))

//draw_debug_text(x - surface_offset_x, y + 20, string(array_length(segment_array)))