if (get_player_color( player ) == 0)
{
	var fill_color_color = (sage_mode == 1)
	    ? make_colour_rgb(211, 216, 145)
	    : make_colour_rgb(189, 227, 150);
	var fill_color_color_dark = (sage_mode == 0)
    ? make_colour_rgb(
        color_get_red(fill_color_color) * 0.6,
        color_get_green(fill_color_color) * 0.6,
        color_get_blue(fill_color_color) * 0.6
    )
    : make_colour_rgb(218, 249, 207);
	var threshold_color_color = make_colour_rgb(255, 255, 255);
}
else
{
	var slot = (sage_mode == 1) ? 5 : 0;
		var fill_color_color = make_colour_rgb(
	    get_color_profile_slot_r(get_player_color(player), slot),
	    get_color_profile_slot_g(get_player_color(player), slot),
	    get_color_profile_slot_b(get_player_color(player), slot)
	);
	
	var fill_color_color_dark = (sage_mode == 0)
    ? make_colour_rgb(
        color_get_red(fill_color_color) * 0.6,
        color_get_green(fill_color_color) * 0.6,
        color_get_blue(fill_color_color) * 0.6
    )
    : make_colour_rgb(
        get_color_profile_slot_r(get_player_color(player), 2),
        get_color_profile_slot_g(get_player_color(player), 2),
        get_color_profile_slot_b(get_player_color(player), 2)
    );

	var threshold_color_color = make_colour_rgb(
	    get_color_profile_slot_r(get_player_color(player), 6),
	    get_color_profile_slot_g(get_player_color(player), 6),
	    get_color_profile_slot_b(get_player_color(player), 6)
	);
}

// Variables de couleur
var outline_color = c_black;
var fill_color = fill_color_color;
var fill_color_dark = fill_color_color_dark;
var threshold_color = make_colour_rgb(255, 255, 255);
var threshold_outline_color = make_colour_rgb(64, 66, 100);

// Variables de position et dimensions
var sage_meter_percentage = sage_meter / sage_meter_max; 
var rectangle_width_max = 171; // Largeur totale du rectangle

// Calcul de la largeur remplie en fonction de sage_meter
var fill_width = rectangle_width_max * sage_meter_percentage;

var my_temp_x = temp_x + 30;
var my_temp_y = temp_y - 8;

// Remplir le rectangle selon sage_meter
if (sage_meter > 0) {
    draw_rectangle_color(my_temp_x+2, my_temp_y-1, my_temp_x + fill_width-2, my_temp_y, fill_color_dark, fill_color, fill_color, fill_color_dark, false); 
    draw_rectangle_color(my_temp_x, my_temp_y-1, my_temp_x + fill_width, my_temp_y-10, fill_color_dark, fill_color, fill_color, fill_color_dark, false); 
    draw_rectangle_color(my_temp_x+2, my_temp_y-9, my_temp_x + fill_width-2, my_temp_y-12, fill_color_dark, fill_color, fill_color, fill_color_dark, false); 
}

// Dessiner le seuil
var threshold_percentage = sage_meter_threshold / sage_meter_max;
var threshold_width = rectangle_width_max * threshold_percentage;
var threshold_x = my_temp_x + threshold_width;
// Contour du seuil
draw_rectangle_color(threshold_x - 4, my_temp_y - 12, threshold_x + 4, my_temp_y, threshold_outline_color, threshold_outline_color, threshold_outline_color, threshold_outline_color, false);
// Le seuil
draw_rectangle_color(threshold_x - 2, my_temp_y - 11, threshold_x + 2, my_temp_y, threshold_color, threshold_color, threshold_color, threshold_color, false);

shader_start();
draw_sprite(
    sprite_get("jauge"),
    (instance_exists(after_image1) && after_image1.state == 1 && mark_meter > 0) ? 1 : 0,
    temp_x,
    temp_y - 25
);
shader_end();
