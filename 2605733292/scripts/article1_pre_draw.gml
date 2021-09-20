//article1_pre_draw.gml

draw_sprite_ext( sprite_get("indicator"), 0, x - 1*spr_dir, y - hud_y_var_thing, 1, 1, 0, hud_color, 1 );

if (state == 4){
	draw_sprite_ext( sprite_get("ability_star_active"), 0, x, y, 1, 1, cur_rot, c_white, 1 );
}