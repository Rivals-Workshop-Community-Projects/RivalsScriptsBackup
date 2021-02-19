if !phone_cheats[cheat_hide_hud] user_event(12);



shader_start();

if (sprite_index == spr_dstrong && image_index == clamp(image_index, 4, 5)){
	var frame = last_charge_frame - round(lerp(0, last_charge_frame, dstrong_charge / 60));
	
	draw_sprite_ext(spr_dstrong_proj, frame, x + (image_index == 4 ? 24 : 16) * spr_dir, y - 34, spr_dir, 1, 0, strong_flashing ? c_white : c_yellow, 1);
}

shader_end();



//Lightning duration bar

if lightning{
	
	var draw_width = 40;
	if (lightning < 3){
		draw_width = max(ease_quadIn(0, 40, lightning, 3), 0);
	}
	
	meterDraw(x, y - char_height - hud_offset - 74 + phone_cheats[cheat_hide_hud] * 40, draw_width, 8, lightning_color[cloud_col_target != lightning_color], clamp(lightning / lightning_max, 0, 1), 1, 1, false);
}



if phone_cheats[cheat_funny_snail] draw_debug_text(x, y, "woag");



#define meterDraw(center, top, width, height, color, amount, alpha, alpha2, border)

if width < 6 return;

var left = center - width * 0.5;

draw_set_alpha(alpha);

rectDraw(left, top, width, height, c_black);
rectDraw(left + 2, top + 2, width - 4, height - 4, make_color_rgb(60, 60, 60));
if border rectDraw(left + 2, top + 2, min(((width - 4) * amount / 2) * 2 + 2, width - 4), height - 4, c_white);

draw_set_alpha(alpha * alpha2);

rectDraw(left + 2, top + 2, ((width - 4) * amount / 2) * 2, height - 4, color);

draw_set_alpha(1);



#define rectDraw(left, top, width, height, color)

draw_rectangle_color(left, top, left + width - 1, top + height - 1, color, color, color, color, false);