
#macro GRAPPLE_DISABLED 0
#macro GRAPPLE_ACTIVE 1
#macro GRAPPLE_RETURNING 2
#macro GRAPPLE_PLAYER_MOUNTED 3
#macro GRAPPLE_WALL_MOUNTED 4
#macro GRAPPLE_ARTICLE_MOUNTED 5

if (parachute_stats) {
    if (is_default) draw_sprite_ext(sprite_get("parachute"), vis_parachute_frame, x+(1*spr_dir), y-15, 1, 1, vis_parachute_angle, c_white, 1);
    else if (is_ea) draw_sprite_ext(sprite_get("parachute_ea"), vis_parachute_frame, x+(1*spr_dir), y-15, 1, 1, vis_parachute_angle, c_white, 1);
    else {
        shader_start();
        draw_sprite_ext(sprite_get("parachute_col"), vis_parachute_frame, x+(1*spr_dir), y-15, 1, 1, vis_parachute_angle, c_white, 1);
        shader_end();
    }
}


if (gh_state != GRAPPLE_DISABLED) {
    
    shader_start();
    
    var temp_x_origin = gh_x_origin + (gh_state < GRAPPLE_WALL_MOUNTED ? gh_x_offset : 0);
    var temp_y_origin = gh_y_origin + (gh_state < GRAPPLE_PLAYER_MOUNTED ? gh_y_offset : 0);
    
    var draw_angle = point_direction(x + temp_x_origin*spr_dir, y + temp_y_origin, gh_x, gh_y);
    var draw_length = point_distance(x + temp_x_origin*spr_dir, y + temp_y_origin, gh_x, gh_y);
    
    draw_rope(sprite_get(is_ea ? "rope_ea" : "rope"), 0, gh_x, gh_y, draw_length, draw_angle+180, c_white, 1)

    if (gh_state != GRAPPLE_PLAYER_MOUNTED) draw_angle = 90 - (90 * gh_dir);
    draw_sprite_ext(sprite_get(is_ea ? "fspec_proj_ea" : "fspec_proj"), (gh_state != GRAPPLE_ACTIVE), gh_x, gh_y, 1, 1, draw_angle, c_white, 1);
    
    shader_end();
    
}



#define draw_rope(sprite, subimg, _x, _y, _w, rot, col, _a)
    var base_width = floor(sprite_get_width(sprite));
    var cur_x = _x;
    var cur_y = _y;
    var full_loops = floor(_w / base_width);
    
    for (var i = 0; i < full_loops; i++) {
        draw_sprite_ext(sprite, subimg, cur_x, cur_y, 1, 1, rot, col, _a);
        cur_x += lengthdir_x(base_width, rot);
        cur_y += lengthdir_y(base_width, rot);
    }
    
    var cut_width = _w - (full_loops * base_width);
    var x_off = lengthdir_x(sprite_get_xoffset(sprite), rot) + lengthdir_y(sprite_get_yoffset(sprite), rot);
    var y_off = lengthdir_y(sprite_get_xoffset(sprite), rot) + lengthdir_x(sprite_get_yoffset(sprite), rot-180);
    draw_sprite_general(sprite, subimg, 0, 0, cut_width, sprite_get_height(sprite), cur_x+x_off, cur_y+y_off, 1, 1, rot, col, col, col, col, _a)