

if ("inventory_list" not in self) exit;
if (!init_complete) exit;

var x_spacing = clamp(72 - 6 * array_length(inventory_list), 26, 44);
var y_spacing = 22;

var hud_x = temp_x - 10;
var hud_y = temp_y - 48 - (y_spacing * floor((array_length(inventory_list)-1)/8));

for (var i = 0; i < array_length(inventory_list); i++) {
	var iid = inventory_list[i]
	draw_sprite_ext(sprite_get("item"), iid, hud_x+22, hud_y+26, 2, 2, 0, c_white, 1);
	if (item_grid[iid][4] > 1) draw_debug_text(hud_x, hud_y, string(item_grid[iid][4]));
	hud_x += x_spacing;
	if (i % 8 == 7) {
		hud_x = temp_x - 10;
		hud_y += y_spacing;
	}
}


//#region Barrier indicator

var barrier = floor(brooch_barrier + heart_barrier + jewel_barrier + aegis_barrier);

if (barrier > 0) {
	
	draw_set_alpha(hud_barrier_fade_alpha);
	draw_sprite(sprite_get("hud_barrier_fade"), 0, temp_x+74, temp_y+8);
	draw_set_alpha(1);
	
    var in_col = make_color_rgb(255, 202, 94);
    var out_col = make_color_rgb(113, 88, 38);
    var bar_x_offset = 136 + (10 * string_length(string(get_player_damage(player))));
	var bar_y_offset = 6;
    
    draw_set_font(asset_get("medFont"));
    for (var i = -2; i < 3; i += 2) {
        for (var j = -2; j < 3; j += 2) {
            draw_text_color(temp_x+bar_x_offset+i, temp_y+bar_y_offset+j, string(barrier) + "%", out_col, out_col, out_col, out_col, 1);
        }
    }
    draw_text_color(temp_x+bar_x_offset, temp_y+bar_y_offset, string(barrier) + "%", in_col, in_col, in_col, in_col, 1);
    
}

//#endregion

//#region DSpec chest indicator

var on_screen_edge = (temp_x == 20) * 4;
var chest_available = move_cooldown[AT_DSPECIAL] <= 0 && !instance_exists(chest_obj)
draw_sprite_ext(sprite_get("dspec_hudcooldown_handle"), chest_available, temp_x-20+on_screen_edge, temp_y+6, 1, 1, 0, get_player_hud_color(player), 1);
draw_sprite_ext(sprite_get("dspec_hudcooldown"), chest_available, temp_x-30+on_screen_edge, temp_y+12, 1, 1, 0, c_white, 1);

if (dspec_cooldown_hits > 0) {
	draw_set_font(asset_get("fName"));
	var in_col = make_color_rgb(16, 16, 16);
	var str = string(dspec_cooldown_hits);
	for (var i = -2; i <= 2; i += 2) {
		for (var j = -2; j <= 2; j += 2) {
			draw_text_color(temp_x-14+i+on_screen_edge, temp_y+22+j, str, in_col, in_col, in_col, in_col, 1);
		}
	}
	var in_col = make_color_rgb(217, 132, 53);
	draw_text_color(temp_x-14+on_screen_edge, temp_y+22, str, in_col, in_col, in_col, in_col, 1);
}

//#endregion



//#region Utility menu subroutines

if (tmu_exists) user_event(4);
if (debug_display_opened) user_event(6);

//#endregion


//#region Limitless mode warning

if (limitless_mode && !limitless_mode_locked) {
	draw_debug_text(temp_x-30, temp_y-62, "Limitless mode has been enabled!");
	draw_debug_text(temp_x-30, temp_y-46, "DOWN+PARRY: cancels this mode.");
	draw_debug_text(temp_x-30, temp_y-30, "If you're an opponent and don't recognize this, do so now!");
	draw_debug_text(temp_x-30, temp_y-14, "This mode should not be used in tournaments.");
}
else if (limitless_mode_cancelled) {
	draw_debug_text(temp_x, temp_y-14, "Limitless mode has been cancelled!");
}

//#endregion


//#region Death Messages //This needs to be moved from here to a different file, and have the position adjusted. Ideally it'd still be centered on the camera, not to the stage, but idk how to do that.

if final_death_timer > 0 {
	draw_set_font( font_get("_rfont") );
	draw_set_halign( fa_center );
	if is_na {
		draw_text_color( 480, 100, "You have been detained. Await your sentence at the end of Time.", c_white, c_white, c_white, c_white, (final_death_timer * 2) / 50);
	} else {
		draw_text_color( 480, 100, string(death_message_pick), c_white, c_white, c_white, c_white, (final_death_timer * 2) / 50);
	}
}

//#endregion