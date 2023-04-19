/*draw_debug_text(temp_x, temp_y - 40, string(hsp));
draw_debug_text(temp_x, temp_y - 60, string(free));*/


//draw_debug_text(temp_x, temp_y - 80, string(fspecial_stuck));
//draw_debug_text(temp_x, temp_y - 120, string(collision_point(x+spr_dir*32, y+1, asset_get("par_jumpthrough"), 1, 1)));
draw_sprite_ext( sprite_get("fruit"), fruit_num, temp_x + 12, temp_y - 16, 1, 1, 0, c_white, 1 );
var hydrant_color = c_white;
if (hydrant_cooldown > 0){
    hydrant_color = c_gray;
}
var pellet_color = c_white;
if (move_cooldown[AT_FSPECIAL] > 0){
    pellet_color = c_gray;
}
shader_start();
draw_sprite_ext( sprite_get("hydrant_hud"), 0, temp_x + 40, temp_y - 16, 1, 1, 0, hydrant_color, 1 );
draw_sprite_ext( sprite_get("pellet"), 0, temp_x + 64, temp_y - 16, 1, 1, 0, pellet_color, 1 );
shader_end();