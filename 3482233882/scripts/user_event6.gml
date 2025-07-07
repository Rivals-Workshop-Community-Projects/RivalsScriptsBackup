// Debug menu draw (called from draw_hud.gml)

draw_set_alpha(0.4);
draw_rectangle_color(54, 0, 906, 480, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);

draw_debug_text(60, 466, "TAUNT+DIRECTION: Navigate | ATTACK+TAUNT: Taunt | ATTACK+SPECIAL: Exit")
draw_debug_text(884, 466, "P" + string(player));

// Item grid info
if (debug_display_type == 0) {

	var debug_x = [60, 260, 360, 480, 600, 700, 900];
	var debug_y = 2;
	
	draw_debug_text(debug_x[0], debug_y, "Name");
	draw_debug_text(debug_x[1], debug_y, "Rarity");
	draw_debug_text(debug_x[2], debug_y, "Type");
	draw_debug_text(debug_x[3], debug_y, "Type 2");
	draw_debug_text(debug_x[4], debug_y, "# Held");
	draw_debug_text(debug_x[5], debug_y, "Incompatible");
	
	debug_y = 30;
	var start_index = debug_display_index;
	var end_index = start_index + debug_display_count;
	for (var ordered_id = start_index; ordered_id < end_index; ordered_id++) {
		
		var item_id = item_id_ordering[ordered_id];
		if (item_id != noone) {
			
			draw_debug_text(debug_x[0], debug_y, item_grid[item_id][0]);
			
			var rarity = item_grid[item_id][1]
			if (rarity < 0) rarity_str = negative_rarity_names[-rarity];
			else var rarity_str = rarity_names[rarity];
			draw_debug_text(debug_x[1], debug_y, rarity_str);
			
			var itp = item_grid[item_id][2];
			if (itp < 0 || 10 <= itp) {
				if (itp == -1) var itp_str = legendary_type_name;
				else if (itp == noone) var itp_str = "";
				else var itp_str = "Invalid";
			}
			else var itp_str = item_type_names[itp];
			draw_debug_text(debug_x[2], debug_y, itp_str);
			
			var itp = item_grid[item_id][3];
			if (itp < 0 || 10 <= itp) {
				if (itp == -1) var itp_str = legendary_type_name;
				else if (itp == noone) var itp_str = "...";
				else var itp_str = "Invalid";
			}
			else var itp_str = item_type_names[itp];
			draw_debug_text(debug_x[3], debug_y, itp_str);
			
			draw_debug_text(debug_x[4], debug_y, string(item_grid[item_id][4]));
			
			var incompat_id = item_grid[item_id][5];
			if (incompat_id == noone) var incompat_str = "...";
			else var incompat_str = item_grid[incompat_id][0];
			draw_debug_text(debug_x[5], debug_y, incompat_str);
			
		}
		debug_y += 18;
		
	}

}

// Probability info
if (debug_display_type == 1) {
	
	draw_debug_text(600, 200, "Uncommons available: " + string(uncommon_pool_size));
	draw_debug_text(600, 220, "Rares remaining: " + string(rares_remaining));
	draw_debug_text(600, 240, "Common legendaries available: " + string(legendary_pool_size[0]));
	draw_debug_text(600, 260, "Uncommon legendaries available: " + string(legendary_pool_size[1]));
	draw_debug_text(600, 280, "Rare legendaries available: " + string(legendary_pool_size[2]));
	
	var debug_x = [60, 260, 360, 440, 500];
	var debug_y = 2;
	
	draw_debug_text(debug_x[0], debug_y, "Name");
	draw_debug_text(debug_x[1], debug_y, "Rarity");
	draw_debug_text(debug_x[2], debug_y, "Remaining");
	draw_debug_text(debug_x[3], debug_y, "Weight");
	draw_debug_text(debug_x[4], debug_y, "Value");
	
	debug_y = 30;
	var start_index = debug_display_index;
	var end_index = start_index + debug_display_count;
	for (var ordered_id = start_index; ordered_id < end_index; ordered_id++) {
		
		var item_id = item_id_ordering[ordered_id];
		if (item_id != noone) {
			
			var itp = item_grid[item_id][2];
			var rarity = item_grid[item_id][1];
			var access_index = item_grid[item_id][7];
			draw_debug_text(debug_x[0], debug_y, item_grid[item_id][0]);
			
			var rarity = item_grid[item_id][1]
			if (rarity < 0) rarity_str = negative_rarity_names[-rarity];
			else var rarity_str = rarity_names[rarity];
			
			// Case: invalid rarity
			if (rarity < 0 || 2 < rarity) {
				draw_debug_text(debug_x[1], debug_y, rarity_str);
				draw_debug_text(debug_x[2], debug_y, "...");
				draw_debug_text(debug_x[3], debug_y, "...");
				draw_debug_text(debug_x[4], debug_y, "...");
			}
			
			// Case: legendary item
			else if (itp == -1) {
				draw_debug_text(debug_x[1], debug_y, rarity_str + "_L");
				draw_debug_text(debug_x[2], debug_y, string(p_legendary_remaining[rarity][access_index]));
				draw_debug_text(debug_x[3], debug_y, string(p_legendary_available[rarity][access_index]));
				draw_debug_text(debug_x[4], debug_y, "...");
			}
			
			// Standard case
			else {
				draw_debug_text(debug_x[1], debug_y, rarity_str);
				draw_debug_text(debug_x[2], debug_y, string(p_item_remaining[rarity][access_index]));
				draw_debug_text(debug_x[3], debug_y, string(p_item_weights[rarity][access_index]));
				draw_debug_text(debug_x[4], debug_y, string(p_item_values[rarity][access_index]));
			}
		
		}
		debug_y += 18;
		
	}
	
}

// Stat info
if (debug_display_type == 2) {
	
	// Stats (labels)
	var debug_x = 190;
	var debug_y = -44;
	
	draw_debug_text(debug_x, debug_y+60, "Walk anim speed: ");
	draw_debug_text(debug_x, debug_y+80, "Dash anim speed: ");
	
	draw_debug_text(debug_x, debug_y+120, "Walk speed: ");
	draw_debug_text(debug_x, debug_y+140, "Walk acceleration: ");
	draw_debug_text(debug_x, debug_y+160, "Initial dash speed: ");
	draw_debug_text(debug_x, debug_y+180, "Dash speed: ");
	draw_debug_text(debug_x, debug_y+200, "Moonwalk acceleration: ");
	
	draw_debug_text(debug_x, debug_y+240, "Max jump HSP: ");
	draw_debug_text(debug_x, debug_y+260, "Max airborne HSP: ");
	
	draw_debug_text(debug_x, debug_y+300, "Jump VSP: ");
	draw_debug_text(debug_x, debug_y+320, "Short hop VSP: ");
	draw_debug_text(debug_x, debug_y+340, "Wall jump VSP: ");
	draw_debug_text(debug_x, debug_y+360, "Max fall VSP: ");
	draw_debug_text(debug_x, debug_y+380, "Fast fall VSP: ");
	draw_debug_text(debug_x, debug_y+400, "Gravity: ");
	
	draw_debug_text(debug_x, debug_y+440, "Double jumps: ");
	draw_debug_text(debug_x, debug_y+460, "Extra dodge frames: ");
	draw_debug_text(debug_x, debug_y+480, "Weight value: ");
	
	// Stats (values)
	var debug_x = 360;
	
	draw_debug_text(debug_x, debug_y+60, string(walk_anim_speed));
	draw_debug_text(debug_x, debug_y+80, string(dash_anim_speed));
	
	draw_debug_text(debug_x, debug_y+120, string(walk_speed));
	draw_debug_text(debug_x, debug_y+140, string(walk_accel));
	draw_debug_text(debug_x, debug_y+160, string(initial_dash_speed));
	draw_debug_text(debug_x, debug_y+180, string(dash_speed));
	draw_debug_text(debug_x, debug_y+200, string(moonwalk_accel));
	
	draw_debug_text(debug_x, debug_y+240, string(max_jump_hsp));
	draw_debug_text(debug_x, debug_y+260, string(air_max_speed));
	
	draw_debug_text(debug_x, debug_y+300, string(jump_speed));
	draw_debug_text(debug_x, debug_y+320, string(short_hop_speed));
	draw_debug_text(debug_x, debug_y+340, string(walljump_vsp));
	draw_debug_text(debug_x, debug_y+360, string(max_fall));
	draw_debug_text(debug_x, debug_y+380, string(fast_fall));
	draw_debug_text(debug_x, debug_y+400, string(gravity_speed));
	
	draw_debug_text(debug_x, debug_y+440, string(max_djumps));
	draw_debug_text(debug_x, debug_y+460, string(dodge_duration_add));
	draw_debug_text(debug_x, debug_y+480, string(knockback_adj));
	
	// Commando properties
	var debug_x = 480;
	draw_debug_text(debug_x, 210, "Move speed stacks: " + string(move_speed));
	draw_debug_text(debug_x, 230, "Attack speed stacks: " + string(attack_speed));
	draw_debug_text(debug_x, 250, "Critical strike checks: " + (critical_active ? "Active" : "Inactive"));
	
}

// Item granter
if (debug_display_type == 3) {
	
	var item_id = item_id_ordering[debug_display_index];
	if (item_id == noone) exit;
	
	var debug_x = 152;
	var debug_y = 242;
	draw_sprite_ext(sprite_get("item"), item_id, debug_x, debug_y, 2, 2, 0, c_white, 1);
	
	debug_x += 60;
	debug_y -= 10;
	draw_debug_text(debug_x, debug_y, item_grid[item_id][0]);
	draw_debug_text(debug_x, debug_y+24, "TAUNT+SPECIAL: Add item");
	draw_debug_text(debug_x, debug_y+40, "TAUNT+SHIELD: Remove item");
	
	debug_x = 480;
	debug_y = 230;
	draw_debug_text(debug_x, debug_y, "Attacks are disabled while this panel is open.");
	
	draw_set_alpha(0.7);
	
	debug_x = 154;
	debug_y = 290;
	var temp_display_index = debug_display_index;
	for (var i = 1; i <= 3; i++) {
		temp_display_index++;
		if (temp_display_index >= array_length(item_id_ordering)) temp_display_index = 0;
		if (item_id_ordering[temp_display_index] == noone) temp_display_index++;
		draw_sprite(sprite_get("item"), item_id_ordering[temp_display_index], debug_x, debug_y);
		debug_y += 30;
	}
	
	debug_x = 154;
	debug_y = 200;
	var temp_display_index = debug_display_index;
	for (var i = 1; i <= 3; i++) {
		temp_display_index--;
		if (temp_display_index < 0) temp_display_index = array_length(item_id_ordering) - 1;
		if (item_id_ordering[temp_display_index] == noone) temp_display_index--;
		draw_sprite(sprite_get("item"), item_id_ordering[temp_display_index], debug_x, debug_y);
		debug_y -= 30;
	}
	
	draw_set_alpha(1);
	
}