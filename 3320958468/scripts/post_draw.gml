// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 4; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
user_event(14);

//============================================================================

var vx_image_index = get_gameplay_time() / 4;

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
{    
	if (attack == AT_FSPECIAL && (window == 2 || window == 3 || window == 4))	
	{
		if (instance_exists(grapple_fist))
		{
			//  Get the current position of the fist
			var fist_x          = grapple_fist.x;
			var fist_y          = grapple_fist.y;
			
			//  Define where where the tether starts
			var spawn_x         = x + 50 * grapple_fist.spr_dir;  // Assuming x and y are the spawn coordinates
			var spawn_y         = y - 31;

			//  Calculating the direction and distance from the fist to the spawn point
			var tether_angle    = point_direction(fist_x, fist_y, spawn_x, spawn_y);
			var max_rope_length = point_distance(fist_x, fist_y, spawn_x, spawn_y);
			
			//  Define the segment length
			var current_length  = 0;
			var segment_length  = 32;

			//  Draw the tether in segments from the fist to the spawn point
			while (current_length < max_rope_length)
			{
				draw_sprite_ext(sprite_get("fspec_grapple_fist_tether"), vx_image_index, fist_x, fist_y, 1, 1, tether_angle, c_white, 1);

				//  Move the drawing position along the tether's direction
				fist_x += lengthdir_x(segment_length, tether_angle);
				fist_y += lengthdir_y(segment_length, tether_angle);

				//  Increment the current length by the segment size
				current_length += segment_length;
			}
		}
	}
}

/*if (instance_exists(grapple_fist))
{	
	draw_debug_text(grapple_fist.x, grapple_fist.y, "Fist");
	draw_debug_text(grapple_fist.x, grapple_fist.y + 22, string(grapple_fist.x));
	draw_debug_text(grapple_fist.x, grapple_fist.y + 42, string(grapple_fist.y));
}

if (instance_exists(plunger_guard))
{	
	draw_debug_text(plunger_guard.x, plunger_guard.y, "P.Guard");
	draw_debug_text(plunger_guard.x, plunger_guard.y + 22, string(plunger_guard.x));
	draw_debug_text(plunger_guard.x, plunger_guard.y + 42, string(plunger_guard.y));
}*/

//============================================================================

#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);

#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;