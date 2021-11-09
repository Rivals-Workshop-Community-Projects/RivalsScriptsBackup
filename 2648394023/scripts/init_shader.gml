if "wing_colors" not in self exit;

var col_light = wing_colors[ir][0];
var col_dark = wing_colors[ir][1];
var col_pulse_light = make_color_rgb(
	lerp(color_get_red(col_light), color_get_red(c_white), nspecial_pulse_alpha),
	lerp(color_get_green(col_light), color_get_green(c_white), nspecial_pulse_alpha),
	lerp(color_get_blue(col_light), color_get_blue(c_white), nspecial_pulse_alpha)
	);
var col_pulse_dark = make_color_rgb(
	lerp(color_get_red(col_dark), color_get_red(col_light), nspecial_pulse_alpha),
	lerp(color_get_green(col_dark), color_get_green(col_light), nspecial_pulse_alpha),
	lerp(color_get_blue(col_dark), color_get_blue(col_light), nspecial_pulse_alpha)
	);

set_character_color_slot(2,
	color_get_red(col_pulse_light),
	color_get_green(col_pulse_light),
	color_get_blue(col_pulse_light)
	);
set_character_color_slot(3,
	color_get_red(col_pulse_dark),
	color_get_green(col_pulse_dark),
	color_get_blue(col_pulse_dark)
	);
set_article_color_slot(2,
	color_get_red(col_light),
	color_get_green(col_light),
	color_get_blue(col_light)
	);
set_article_color_slot(3,
	color_get_red(col_dark),
	color_get_green(col_dark),
	color_get_blue(col_dark)
	);

if drawing_wings{
	
	set_article_color_slot(2,
		color_get_red(col_pulse_light),
		color_get_green(col_pulse_light),
		color_get_blue(col_pulse_light)
		);
	set_article_color_slot(3,
		color_get_red(col_pulse_dark),
		color_get_green(col_pulse_dark),
		color_get_blue(col_pulse_dark)
		);
	drawing_wings = 0;
}