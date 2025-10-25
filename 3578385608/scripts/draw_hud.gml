if "recipes_index" not in self exit;
if stevepotion{
	draw_sprite_ext(steve_bottle, 0, temp_x - 12, temp_y - 28, 2, 2, 0, c_white, 1);
	draw_sprite_ext(steve_overlay, 0, temp_x - 12, temp_y - 28, 2, 2, 0, steve_color, 1);
}else draw_sprite_ext(sprite_get("hud_vial"), concoction_id, temp_x - 16, temp_y - 24, 2, 2, 0, c_white, 1);
draw_set_halign(fa_left);
draw_debug_text(temp_x + 18, temp_y - 12, (stevepotion? steve_potnames[concoction_id]: recipes_name[concoction_id]));
draw_set_alpha(flavour_text/40);
draw_set_font(asset_get("fName"));
draw_set_halign(fa_left);
draw_debug_text(temp_x + 18, temp_y - 30, (stevepotion? steve_desc[concoction_id]: recipes_desc[concoction_id]));
var c = (stevepotion? steve_color: recipes_col[concoction_id]);
draw_text_color(temp_x + 18, temp_y - 30, (stevepotion? steve_desc[concoction_id]: recipes_desc[concoction_id]), c, c, c, c, flavour_text/40);
draw_set_alpha(1);
