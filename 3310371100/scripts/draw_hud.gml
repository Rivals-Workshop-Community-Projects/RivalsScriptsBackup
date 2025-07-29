
if (variable_instance_exists(id, "awake")){
shader_start()
draw_sprite_ext( sprite_get("etc_hudstuff_iguess"), fsp_loop_count, temp_x+168, temp_y-22, 2, 2, 0, -1, 1 ) 
shader_end();
}










//beta display

/*
var versione = "RC2"

draw_set_halign(fa_left);
draw_set_font(asset_get("fName"));
draw_set_alpha(0.4);
draw_rectangle_colour(temp_x+2, temp_y-17, temp_x+126+7, temp_y-4, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
draw_text_ext_transformed_colour(temp_x+10, temp_y-16, "Usher Beta v."+string(versione), 30, 400, 1, 1, 0, c_aqua, c_aqua, c_aqua, c_aqua, 0.5);
*/