// prevents draw_hud from running a frame too early and spitting an error
/*
if "phone" not in self exit;
*/
//draw_debug_text(temp_x+10, temp_y-42,string(synced_vars[0]));

var temp_color = c_white;
if (move_cooldown[AT_NSPECIAL] > 0 || has_pot = false) temp_color = c_gray;
draw_sprite_ext(sprite_get("pot_hud"), 0, temp_x+180, temp_y-30, 2, 2, 0, temp_color, 1);

var temp_color = c_white;
if (move_cooldown[AT_FSPECIAL] > 0 || has_shrimp = false || shrimp_in_pot = true) temp_color = c_gray;
shader_start();
draw_sprite_ext(sprite_get("shrimp_hud"), 0, temp_x+0, temp_y-34, 2, 2, 0, temp_color, 1);
shader_end();

//article icon
with obj_article1 if player_id == other{
	var leeway = 0;
	var z = y - 20;
	
	var off_l = x < view_get_xview() - leeway;
	var off_r = x > view_get_xview() + view_get_wview() + leeway;
	var off_u = z < view_get_yview() - leeway;
	var off_d = z > view_get_yview() + view_get_hview() + leeway;
	
	var margin = 34;
	var idx = noone;
	
	if off_l{
		idx = 0;
		if off_u idx = 1;
		if off_d idx = 7;
	}
	else if off_r{
		idx = 4;
		if off_u idx = 3;
		if off_d idx = 5;
	}
	else if off_u idx = 2;
	else if off_d idx = 6;
	
	if idx != noone{
		draw_sprite_ext(sprite_get("article_offscreen"), idx, clamp(x - view_get_xview(), margin, view_get_wview() - margin), clamp(z - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, get_player_hud_color(player), 1);
		with other shader_start();
		draw_sprite_ext(sprite_get("article_offscreen"), 8, clamp(x - view_get_xview(), margin, view_get_wview() - margin), clamp(z - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, c_white, 1);
		with other shader_end();
	}
}
//draw_debug_text(temp_x + 200, temp_y - 32, string(other_scalding));
/*
draw_debug_text(temp_x + 200, temp_y - 32, string(gumbo_scalding));
draw_debug_text(temp_x + 100, temp_y - 32, string(gumbo_scalding_timer));
draw_debug_text(temp_x + 200, temp_y - 52, string(gumbo_is_scalding));
draw_debug_text(temp_x + 100, temp_y - 52, string(is_scalding));
draw_debug_text(temp_x + 100, temp_y - 52, string(hit_player_obj.other_scalding_timer));

draw_sprite(sprite_get("speech_hud"), 0, temp_x + -86, temp_y + -78);
	temp_x = temp_x;
	temp_y = temp_y;
	var box_w = 206;
	textDraw(temp_x + 8, temp_y - 66, "fName", c_white, 16, box_w, fa_left, 1, false, 1, textbox_text);
*/
// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
/*
muno_event_type = 5;
user_event(14);
*/
#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];