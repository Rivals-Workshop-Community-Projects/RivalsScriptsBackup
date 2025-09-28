//css_update.gml
//this script is used for anything you want to display on the CSS in real-time
//NOTE: CSS is short for Character Select Screen

/*
css_anim_time ++; //animates the css by counting up, similarly to a state_timer
alt_cur = get_player_color(player); //checks the current alt
alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable


//these values need to be updated every frame because when you come back to the CSS the window kinda pops up
icon_x_pos = x + 174;
icon_y_pos = y + 108;
preview_x = floor(x+10);
preview_y = floor(y+10);

//if the current alt isn't the same as the previous one, reset the animation timer and update the previous alt
if (alt_prev != alt_cur)
{
    css_anim_time = 0;
    alt_prev = alt_cur;
}

//rainbow alt stuff
if (alt_cur == 11 || alt_cur == 12) user_event(0);
*/

// Detect cursor for purpose of pushing custom button
if (instance_exists(cursor_id)) {
	var cursor_x = get_instance_x(cursor_id);
	var cursor_y = get_instance_y(cursor_id);

	// Bounds of the button
	// if hovering over button, add 2 to the image index used
	if ((cursor_x > uspecial_button_origin_x + uspecial_button_border_buffer + x)
		&& (cursor_x < uspecial_button_origin_x + uspecial_button_width - uspecial_button_border_buffer + x)
		&& (cursor_y > uspecial_button_origin_y + uspecial_button_border_buffer + y)
		&& (cursor_y < uspecial_button_origin_y + uspecial_button_height - uspecial_button_border_buffer + y))
	{
		uspecial_button_frame = 1;
		// If over the boxes, suppress the cursor and detect click
		suppress_cursor = 1;
		if (menu_a_pressed) {
			va_mode_selected = !va_mode_selected;
			sound_play(asset_get("mfx_forward"), false, noone, 1, 1);
		}
	} else {
		uspecial_button_frame = 0;
	}
	if (va_mode_selected) {
		uspecial_button_frame += 2;
	}
}

// Manage synced var
// Synced var is 32 bits, only use ones of interest to us
var synced_var = va_mode_selected ? 0 : 1;
set_synced_var(player, synced_var);