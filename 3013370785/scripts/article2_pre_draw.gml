//article3_post_draw.gml


draw_primitive_begin(pr_trianglestrip)
var w = 0
var max_w = 4
var scale_w = 0.25
var col = get_slot_colour(1)

switch item {
    case 1: //homingcart
    max_w = 12
    scale_w = 0.7
    break;
    
    case 2: //hoverstone
    max_w = 9
    scale_w = 0.7
    break;
    
    case 3: //bomb
    max_w = 12
    scale_w = 0.7
    break;
    
    case 4: //rocket
    max_w = 8
    scale_w = 0.4
    break;
}

for (var i = 0; i < trail_segments; i++) {
    var cur_index = (i + trail_index) mod trail_segments
    var el = trail_arr[cur_index]
    
    if el[0] != undefined {
        var p1x = el[0] + w*dcos(el[2]+90)
        var p1y = el[1] - w*dsin(el[2]+90)
        var p2x = el[0] - w*dcos(el[2]+90)
        var p2y = el[1] + w*dsin(el[2]+90)
        
        col = merge_color(col, c_white, 0.1*i/trail_segments)
        
        //draw_circle_color(p1x, p1y, 2, c_white, c_white, false)
        //draw_circle_color(p2x, p2y, 2, c_blue, c_blue, false)
        draw_vertex_color(p1x, p1y, col, 0.8)
        draw_vertex_color(p2x, p2y, col, 0.8)
        
    }
    w = clamp(w + scale_w, 0, max_w)
}
draw_primitive_end()

#define get_slot_colour(slot)
var p_col = get_player_color(player)
var col_r = get_color_profile_slot_r(p_col, slot)
var col_g = get_color_profile_slot_g(p_col, slot)
var col_b = get_color_profile_slot_b(p_col, slot)
var col_final = make_color_rgb(col_r, col_g, col_b);
return col_final