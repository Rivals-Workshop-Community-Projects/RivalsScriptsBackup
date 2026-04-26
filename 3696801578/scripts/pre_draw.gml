 

if state == PS_RESPAWN or respawn_taunt {
    draw_sprite_ext(sprite_get("plat_back"), get_gameplay_time()/5 ,x,y+12, spr_dir, image_yscale, 0, c_white, 1)
}
shader_start()
if instance_exists(jake_obj) and jake_obj.state == PS_RESPAWN {
    // var dist = point_distance(jake_obj.x, jake_obj.y, jake_obj.stretch_position.x, jake_obj.stretch_position.y)
    // var dir = point_direction(jake_obj.x, jake_obj.y, jake_obj.stretch_position.x, jake_obj.stretch_position.y)
    
    // var width = 0
    //var width = (dist / 1000) - 0.1
    
    var offset = jake_obj.window != 2 and jake_obj.window != 1 ? 0 : -20
    draw_sprite_ext(jake_obj.sprite_index, jake_obj.image_index, floor(jake_obj.x),floor(jake_obj.y+offset), jake_obj.spr_dir, jake_obj.image_yscale, jake_obj.image_angle, c_white, 1)
    if jake_obj.window != 0 {
        var len = array_length(jake_obj.stretch_positions)
        if len < 2 exit
        
        var width = 12
        if jake_obj.window == 1 {
             width -= (6* (jake_obj.window == 1) )
        } else if  jake_obj.window == 2 {
            width -= max(4-jake_obj.window_timer,0)
        }
        
        draw_jake_stretch(width + 2, c_black)
        draw_jake_stretch(width, jake_color)
        
        var jake_head_dir = point_direction(jake_obj.stretch_positions[len-2].x, jake_obj.stretch_positions[len-2].y, jake_obj.stretch_positions[len-1].x, jake_obj.stretch_positions[len-1].y)
        draw_sprite_ext(sprite_get("jake_article_stretch_head"),0,jake_obj.stretch_positions[len-1].x, jake_obj.stretch_positions[len-1].y,1,1,jake_head_dir,c_white,1)
    }
    
    // if window != 0 {
    //     draw_sprite_ext(sprite_get("jake_article_stretch_middle"), 0, floor(x),floor(y-6), dist, width+1, dir, c_white, 1)
    // }
}
 shader_end()

#define draw_jake_stretch
/// @param {undefined} jake_width
/// @param {undefined} color
var jake_width = argument0, color = argument1;

draw_primitive_begin(pr_trianglestrip)
for (var j = 0; j < array_length(jake_obj.stretch_positions)-1; j++) {
    if j < jake_obj.current_stretch_position continue;
    
    var dir = point_direction(jake_obj.stretch_positions[j].x, jake_obj.stretch_positions[j].y, jake_obj.stretch_positions[j+1].x, jake_obj.stretch_positions[j+1].y)
    var distx = lengthdir_x(jake_width, dir+90)
    var disty = lengthdir_y(jake_width, dir+90)

    draw_vertex_color(jake_obj.stretch_positions[j].x - distx, jake_obj.stretch_positions[j].y - disty, color, 1)
    draw_vertex_color(jake_obj.stretch_positions[j].x + distx, jake_obj.stretch_positions[j].y + disty, color, 1)
    
    // draw_line_width_colour(jake_obj.stretch_positions[| j].x, jake_obj.stretch_positions[| j].y, jake_obj.stretch_positions[| j+1].x, jake_obj.stretch_positions[| j+1].y, 24, c_black, c_black)
    // draw_line_width_colour(jake_obj.stretch_positions[| j].x, jake_obj.stretch_positions[| j].y, jake_obj.stretch_positions[| j+1].x, jake_obj.stretch_positions[| j+1].y, 20, jake_color, jake_color)
}
draw_primitive_end()