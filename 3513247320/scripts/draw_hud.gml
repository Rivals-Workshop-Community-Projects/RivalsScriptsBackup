var corner = [temp_x + 28, temp_y - 7];
var max_length = 100;
var length = lerp(0, max_length, uspec_fuel/uspec_max_fuel);
var height = 5;
var margin = 2;
var col = make_color_hsv(lerp(0, 85, uspec_fuel/uspec_max_fuel), 255, 255);

draw_rectangle_color(corner[0] - margin, corner[1] - margin, corner[0] + max_length + margin, corner[1] + margin + height, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(corner[0], corner[1], corner[0] + length, corner[1] + height, col, col, col, col, false);

shader_start();
draw_sprite_ext(sprite_get("rush_icon"), 0, temp_x + 14, temp_y - 13, 1, 1, 0, c_white, 1);
shader_end();
if(!can_use_jet){
	gpu_set_alphatestenable(true);
	gpu_set_fog(1, c_black, 0, 1);
	
	draw_sprite_ext(sprite_get("rush_icon"), 0, temp_x + 14, temp_y - 13, 1, 1, 0, c_white, .5);
	
	gpu_set_fog(0, c_white, 0, 0);
	gpu_set_alphatestenable(false);
}

if "accurate_megaman_timer" not in self exit;

if alt == 31 && accurate_megaman_timer{
    shader_end();
	var maxfog = 1;
	var intensity = ((accurate_megaman_flashlength / 2) - abs((accurate_megaman_flashlength / 2) - accurate_megaman_timer)) / (accurate_megaman_flashlength / 2);
	gpu_set_fog(1, c_white, 0, 1);
	draw_sprite_ext(state_cat == SC_HITSTUN && hurt_img != 1? get_char_info(player, INFO_HUDHURT):get_char_info(player, INFO_HUD), 0, temp_x + 28, temp_y + 6, 1, 1, 0, c_white, intensity);
	gpu_set_fog(0, c_white, 0, 0);
	shader_start();
}

shader_end();