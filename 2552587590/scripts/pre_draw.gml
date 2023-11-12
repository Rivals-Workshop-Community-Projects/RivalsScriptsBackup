if "dx" not in self exit;

draw_set_valign(fa_top);

var idx = 0;

for (var i = 0; i < array_length(data) && idx == 0; i++) {
	if data[i].type == 2 && data[i].index == owner.attack {
		idx = i;
	}
}

var item = data[idx];

var page_change_timer = 0;
var page_change_timer_max = 3;
var page = 0;
if idx > 0 {
	page = times_attack_repeated % (array_length(item.page_starts) + 1);
	if page == array_length(item.page_starts) {
		item = data[0];
	}
}



if true {
	var draw_w = view_get_wview();
	var draw_h = view_get_hview();
	var draw_x = view_get_xview() - draw_w * 0; // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")).
	var draw_y = view_get_yview(); // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).
	
	if false {
		draw_x -= view_get_xview(); // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")).
		draw_y -= view_get_yview(); // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).
	}
	
	// var margin_l = 256;
	// var margin_r = 32;
	var margin_l = 112;
	var margin_r = 112;
	var margin_t = 32;
	var margin_b = 20;
	
	if true draw_set_alpha(0.75);
	rectDraw(draw_x, draw_y, draw_w, draw_h, c_black);
	draw_set_alpha(1);
	
	// draw_x -= round(118 * (y / lowered_y));
	// draw_y -= cursor_change_timer;
	
	var app_color = $f0bc27;
	
	if true {
		
		var text_x = draw_x + margin_l;
		var text_y = draw_y + margin_t;
				
		var this_w = draw_w - margin_l - margin_r;
		var this_x = text_x + this_w / 2;
		
		textDraw(this_x, text_y, "fName", app_color, 18, this_w, fa_center, 1, 0, 1, "- " + item.name + " -", true);
		
		text_y += last_text_size[1] + 10;
		
		switch(item.type){
			case 1: // stats
				
				var stats_table = [];
				
				with owner stats_table = [
					
					// grounded
					"Walk Speed", walk_speed,
					"Walk Accel", walk_accel,
					"Dash Speed", dash_speed,
					"Initial Dash Speed", initial_dash_speed,
					"Initial Dash Time", initial_dash_time,
					"Ground Friction", ground_friction,
					"Waveland Adj", wave_land_adj,
					"Waveland Friction", wave_friction,
					
					// aerial
					"Max Air Speed", air_max_speed,
					"Air Accel", air_accel,
					"Pratfall Accel", prat_fall_accel,
					"Air Friction", air_friction,
					"Fall Speed", max_fall,
					"Fast Fall Speed", fast_fall,
					"Gravity", gravity_speed,
					"Hitstun Gravity", hitstun_grav,
					
					// jumps
					"Full Hop", jump_speed,
					"Short Hop", short_hop_speed,
					"DJump", djump_speed,
					"DJump Count", max_djumps,
					"Walljump HSP", walljump_hsp,
					"Walljump VSP", walljump_vsp,
					"Max Jump Speed", max_jump_hsp,
					"DJump Change", jump_change,
					
					// misc
					"Knockback Adj", knockback_adj,
					"Jumpsquat Time", jump_start_time,
					"Leave Ground Max", leave_ground_max,
					"Prat Land Time", prat_land_time,
					"Land Time", land_time,
					"Notes", other.stats_notes,
				];
				
				var orig_y = text_y;
				text_x += (242 - 112) / 2;
				
				for (var i = 0; i < array_length(stats_table); i += 2){
					textDraw(text_x, text_y, "fName", app_color, 18, 160, fa_left, 1, 0, 1, stats_table[i], true);
					text_y += last_text_size[1];
					textDraw(text_x + 16, text_y, "fName", c_white, 18, 100, fa_left, 1, 0, 1, decimalToString(stats_table[i+1]), true);
					text_y += last_text_size[1];
					
					if text_y > draw_y + draw_h - margin_b * 8{
						text_y = orig_y;
						text_x += 160;
					}
				}
				break;
			case 2: // a move
				// textDraw(draw_x + view_get_wview() - 9 + round(118 * 3), draw_y + 32, "fName", c_white, 1000, 1000, fa_right, 1, 0, 1, "JUMP: Refresh", 1);
				text_x += (208 - 112) / 2;
				
				var orig_x = text_x;
				var orig_y = text_y;
				
				textDraw(text_x, text_y, "fName", app_color, 18, 160, fa_left, 1, 0, 1, "Length (Whiff):", true);
				text_x += last_text_size[0] + 8;
				textDraw(text_x, text_y, "fName", c_white, 18, 100, fa_left, 1, 0, 1, item.length, false);
				text_x = orig_x + 240;
				textDraw(text_x, text_y, "fName", app_color, 18, 160, fa_left, 1, 0, 1, "Ending Lag (Whiff):", true);
				text_x += last_text_size[0] + 8;
				textDraw(text_x, text_y, "fName", c_white, 18, 100, fa_left, 1, 0, 1, item.ending_lag, false);
				text_x = orig_x + 480;
				textDraw(text_x, text_y, "fName", app_color, 18, 160, fa_left, 1, 0, 1, "Landing Lag (Whiff):", true);
				text_x += last_text_size[0] + 8;
				textDraw(text_x, text_y, "fName", c_white, 18, 100, fa_left, 1, 0, 1, item.landing_lag, false);
				
				text_x = orig_x;
				text_y += last_text_size[1];
				
				if item.misc != "-"{
					textDraw(text_x, text_y, "fName", app_color, 18, 160, fa_left, 1, 0, 1, "Notes:", true);
					text_x += last_text_size[0] + 8;
					textDraw(text_x, text_y, "fName", c_white, 18, draw_w - margin_l - margin_r - 64, fa_left, 1, 0, 1, item.misc, true);
					text_y += last_text_size[1];
					text_x = orig_x;
				}
				
				if array_length(item.hitboxes){
					text_y += 10;
					var add_x = 64;
					var stats_table = [
						"Active",
						"DMG",
						"BKB",
						"KBG",
						"Angle",
						"Pri.",
						"BHP",
						"HPG",
						];
					
					text_x += add_x * 2;
					
					for (var i = 0; i < array_length(stats_table); i++){
						textDraw(text_x, text_y, "fName", app_color, 18, 24, fa_left, 1, 0, 1, stats_table[i], true);
						text_x += add_x;
					}
					
					text_y += last_text_size[1] + 10;
					
					var reached_end = false;
	
					text_y += ease_sineIn(0, 240, page_change_timer, page_change_timer_max);
					
					for (var i = item.page_starts[page]; i < array_length(item.hitboxes) && !reached_end; i++){
						text_x = orig_x;
						var hb = item.hitboxes[i];
						stats_table = [
							hb.active,
							hb.damage,
							hb.base_kb,
							hb.kb_scale,
							hb.angle,
							hb.priority,
							hb.base_hitpause,
							hb.hitpause_scale,
							];
						textDraw(text_x, text_y, "fName", app_color, 18, 120, fa_left, 1, 0, 1, item.hitboxes[i].name, false);
						text_x += add_x * 2;
					
						for (var j = 0; j < array_length(stats_table); j++){
							textDraw(text_x, text_y, "fName", hb.parent_hbox && hb.parent_hbox != i + 1 && j > 0 ? c_gray : c_white, 18, 24, fa_left, 1, 0, 1, stats_table[j], true);
							text_x += add_x;
						}
						
						text_y += last_text_size[1];
						
						if hb.misc != "-"{
							text_x = orig_x + add_x * 2;
							textDraw(text_x, text_y, "fName", c_gray, 18, draw_w - margin_l - margin_r - 128, fa_left, 1, 0, 1, hb.misc, true);
							text_y += last_text_size[1];
						}
						
						text_y += 10;
						
						if text_y - ease_sineIn(0, 240, page_change_timer, page_change_timer_max) > draw_y + draw_h - margin_b - 64{
							reached_end = true;
							if !array_find_index(item.page_starts, i){
								array_push(item.page_starts, i);
							}
						}
					}
				}
				break;
		}
	}
}

#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width - 1, y1 + height - 1, color, color, color, color, false);

#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, get_size)

x1 = round(x1);
y1 = round(y1);

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
	for (i = -1; i < 2; i++) {
		for (j = -1; j < 2; j++) {
			draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
		}
	}
}

if alpha > 0.01 draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if get_size last_text_size = [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];

#define maskHeader

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);

#define maskMidder

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

#define maskFooter

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);

#define decimalToString(input)

if !is_number(input) return(string(input));

input = input % 1000;

input = string(input);
var last_char = string_char_at(input, string_length(input));

if (string_length(input) > 2){
	var third_last_char = string_char_at(input, string_length(input) - 2);
	if (last_char == "0" && third_last_char == ".") input = string_delete(input, string_length(input), 1);
}

if (string_char_at(input, 1) == "0") input = string_delete(input, 1, 1);

return input;








/*



exit;

var idx = (owner.attack && !(owner.state == PS_CROUCH && owner.state_timer > 30)) ? noone : 0;

for (var i = 0; i < array_length(moves) && idx == noone; i++){
	if moves[i].type == 2 && moves[i].index == owner.attack{
		idx = i;
	}
}

if idx == noone exit;

drawFrameDataTable(0, 0, moves[idx]);



#define drawFrameDataTable(sin_thing, header_height, move)

draw_set_valign(fa_top);
	
table_x = origin_x + view_get_xview() - original_view_x + 10;
table_y = origin_y + 10 + min(view_get_yview() - original_view_y, 0) * 10;

biggest_height = 0;

var item_width = 60;
var wide_width = 70;
var huge_width = 80;

table_should_draw = true;
var app_color = $33929e;

draw_set_alpha(0.75);

rectDraw(0, 0, room_width, room_height, c_black);

draw_set_alpha(1);

switch(move.type){
	
	case 1: // Stats
		
		var draw_widths = [];
		
		draw_widths[1] = drawTableItem(app_color, 0, "Walk
		Speed")[0];
		draw_widths[2] = drawTableItem(app_color, 0, "Walk
		Accel")[0];
		draw_widths[3] = drawTableItem(app_color, 0, "Dash
		Speed")[0];
		draw_widths[4] = drawTableItem(app_color, 0, "Init Dash
		Speed")[0];
		draw_widths[5] = drawTableItem(app_color, 0, "Init Dash
		Time")[0];
		draw_widths[6] = drawTableItem(app_color, 0, "Ground
		Friction")[0];
		draw_widths[7] = drawTableItem(app_color, 0, "Wave
		Adj")[0];
		draw_widths[8] = drawTableItem(app_color, 0, "Wave
		Friction")[0];
		
		draw_widths[9] = drawTableItem(app_color, 0, "Max Air
		Speed")[0];
		draw_widths[10] = drawTableItem(app_color, 0, "Air
		Accel")[0];
		draw_widths[11] = drawTableItem(app_color, 0, "Pratfall
		Accel")[0];
		draw_widths[12] = drawTableItem(app_color, 0, "Air
		Friction")[0];
		
		startNewTableRow();
		
		drawTableItem(c_white, draw_widths[1], decimalToString(owner.walk_speed));
		drawTableItem(c_white, draw_widths[2], decimalToString(owner.walk_accel));
		drawTableItem(c_white, draw_widths[3], decimalToString(owner.dash_speed));
		drawTableItem(c_white, draw_widths[4], decimalToString(owner.initial_dash_speed));
		drawTableItem(c_white, draw_widths[5], decimalToString(owner.initial_dash_time));
		drawTableItem(c_white, draw_widths[6], decimalToString(owner.ground_friction));
		drawTableItem(c_white, draw_widths[7], decimalToString(owner.wave_land_adj));
		drawTableItem(c_white, draw_widths[8], decimalToString(owner.wave_friction));
		
		drawTableItem(c_white, draw_widths[9], decimalToString(owner.air_max_speed));
		drawTableItem(c_white, draw_widths[10], decimalToString(owner.air_accel));
		drawTableItem(c_white, draw_widths[11], decimalToString(owner.prat_fall_accel));
		drawTableItem(c_white, draw_widths[12], decimalToString(owner.air_friction));
		
		table_y += biggest_height + 20;
		table_x = origin_x + view_get_xview() - original_view_x + 10;
		
		draw_widths[10] = drawTableItem(app_color, 0, "Leave
		Ground Max")[0];
		draw_widths[11] = drawTableItem(app_color, 0, "Max Jump
		Speed")[0];
		draw_widths[12] = drawTableItem(app_color, 0, "DJump
		Change")[0];
		
		draw_widths[1] = drawTableItem(app_color, 0, "Fall
		Speed")[0];
		draw_widths[2] = drawTableItem(app_color, 0, "Fast
		Fall")[0];
		draw_widths[3] = drawTableItem(app_color, 0, "
		Gravity")[0];
		draw_widths[8] = drawTableItem(app_color, 0, "Hitstun
		Gravity")[0];
		draw_widths[4] = drawTableItem(app_color, 0, "
		Full Hop")[0];
		draw_widths[5] = drawTableItem(app_color, 0, "
		Short Hop")[0];
		draw_widths[6] = drawTableItem(app_color, 0, "
		DJump")[0];
		draw_widths[7] = drawTableItem(app_color, 0, "DJump
		Count")[0];
		draw_widths[9] = drawTableItem(app_color, 0, "Walljump
		HSP/VSP")[0];
		
		startNewTableRow();
		
		drawTableItem(c_white, draw_widths[10], decimalToString(owner.leave_ground_max));
		drawTableItem(c_white, draw_widths[11], decimalToString(owner.max_jump_hsp));
		drawTableItem(c_white, draw_widths[12], decimalToString(owner.jump_change));
		
		drawTableItem(c_white, draw_widths[1], decimalToString(owner.max_fall));
		drawTableItem(c_white, draw_widths[2], decimalToString(owner.fast_fall));
		drawTableItem(c_white, draw_widths[3], decimalToString(owner.gravity_speed));
		drawTableItem(c_white, draw_widths[8], decimalToString(owner.hitstun_grav));
		drawTableItem(c_white, draw_widths[4], decimalToString(owner.jump_speed));
		drawTableItem(c_white, draw_widths[5], decimalToString(owner.short_hop_speed));
		drawTableItem(c_white, draw_widths[6], decimalToString(owner.djump_speed));
		drawTableItem(c_white, draw_widths[7], decimalToString(owner.max_djumps));
		drawTableItem(c_white, draw_widths[9], decimalToString(owner.walljump_hsp) + "/" + string(owner.walljump_vsp));
		
		table_y += biggest_height + 20;
		table_x = origin_x + view_get_xview() - original_view_x + 10;
		
		draw_widths[1] = drawTableItem(app_color, 0, "Knockback
		Adj")[0];
		draw_widths[2] = drawTableItem(app_color, 0, "Prat Land
		Time")[0];
		draw_widths[3] = drawTableItem(app_color, 0, "Land
		Time")[0];
		draw_widths[4] = drawTableItem(app_color, 0, "Jumpsquat
		Time")[0];
		
		drawTableItem(app_color, 1000, "
		Notes");
		
		startNewTableRow();
		
		drawTableItem(c_white, draw_widths[1], decimalToString(owner.knockback_adj));
		drawTableItem((owner.prat_land_time == 3) ? c_red : c_white, draw_widths[2], decimalToString(owner.prat_land_time));
		drawTableItem(c_white, draw_widths[3], decimalToString(owner.land_time));
		drawTableItem(c_white, draw_widths[4], decimalToString(owner.jump_start_time));
		
		drawTableItem(c_white, side_bar.screen_w - table_x + origin_x + view_get_xview() - original_view_x - 10, stats_notes);
		break;

	case 2: // Move
		
		drawTableItem(app_color, item_width, "
		Name");
		drawTableItem(app_color, item_width, "Length (Whiff)");
		drawTableItem(app_color, item_width, "End Lag (Whiff)");
		drawTableItem(app_color, wide_width, "Land Lag (Whiff)");
		drawTableItem(app_color, wide_width, "
		Notes");
		
		startNewTableRow();
		
		drawTableItem(c_white, item_width, move.name);
		drawTableItem(c_white, item_width, move.length);
		drawTableItem(c_white, item_width, move.ending_lag);
		drawTableItem(c_white, wide_width, move.landing_lag);
		drawTableItem(c_white, side_bar.screen_w - table_x + origin_x + view_get_xview() - original_view_x - 10, move.misc);
		
		table_y += biggest_height;
		
		if array_length_1d(move.hitboxes) > 0{
		
			table_y += 20;
			table_x = origin_x + view_get_xview() - original_view_x + 10;
							
			biggest_height = 0;
			biggest_width = 0;
			
			drawTableItem(app_color, huge_width, "Hitbox");
			
			var draw_widths = [];
			
			draw_widths[1] = drawTableItem(app_color, 0, "Active")[0];
			draw_widths[2] = drawTableItem(app_color, 0, "DMG")[0];
			draw_widths[3] = drawTableItem(app_color, 0, "BKB")[0];
			draw_widths[4] = drawTableItem(app_color, 0, "KBG")[0];
			draw_widths[5] = drawTableItem(app_color, 0, "Angle")[0];
			draw_widths[6] = drawTableItem(app_color, 0, "Pri.")[0];
			draw_widths[7] = drawTableItem(app_color, 0, "Gro.")[0];
			draw_widths[8] = drawTableItem(app_color, 0, "BHP")[0];
			draw_widths[9] = drawTableItem(app_color, 0, "HPG")[0];
			drawTableItem(app_color, 0, "Notes");
			
			for (i = 0; i < array_length_1d(move.hitboxes); i++){
			
				startNewTableRow();
				
				var hitbox = move.hitboxes[i];
				
				var par_col = hitbox.parent_hbox && hitbox.parent_hbox != i+1 ? c_gray : c_white;
				// var par_col = c_white;
				
				drawTableItem(app_color, huge_width, hitbox.name);
				
				drawTableItem(c_white, draw_widths[1], hitbox.active);
				drawTableItem(par_col, draw_widths[2], hitbox.damage);
				drawTableItem(par_col, draw_widths[3], hitbox.base_kb);
				drawTableItem(par_col, draw_widths[4], hitbox.kb_scale);
				drawTableItem(par_col, draw_widths[5], hitbox.angle);
				drawTableItem(par_col, draw_widths[6], hitbox.priority);
				drawTableItem(c_white, draw_widths[7], hitbox.group);
				drawTableItem(par_col, draw_widths[8], hitbox.base_hitpause);
				drawTableItem(par_col, draw_widths[9], hitbox.hitpause_scale);
				var new = drawTableItem(c_white, side_bar.screen_w * 0.9, hitbox.misc);
				
				if (table_x - origin_x + view_get_xview() - original_view_x > biggest_width) biggest_width = table_x - origin_x + view_get_xview() - original_view_x;
			}
			
			table_y += biggest_height;
		
		}
		break;
		
	case 3: // Custom
		
		for (i = 0; i < array_length_1d(custom_fd_content); i++){
			table_x = origin_x + view_get_xview() - original_view_x + 10;
			biggest_height = 0;
			var cfd = custom_fd_content[i];
			switch(cfd.type){
				case 0: // Header
					drawTableItem(app_color, side_bar.screen_w, cfd.content);
					startNewTableRow();
					break;
				case 1: // Body
					table_y += drawTableItem(c_white, side_bar.screen_w, cfd.content)[1] + 20;
					break;
			}
		}
		break;
}



#define startNewTableRow()

table_y += biggest_height;

rectDraw(origin_x + view_get_xview() - original_view_x, table_y, 879, 1, $33929e);

table_y += 10;
table_x = origin_x + view_get_xview() - original_view_x + 10;
				
biggest_height = 0;

// table_should_draw = (table_y == min(table_y, origin_y - side_bar.scroll_y + side_bar.screen_h));
table_should_draw = true;



#define drawTableItem(col, width, txt)

if (col == c_white && txt == "-") col = c_gray;

if (col == c_red){
	var shake_x = 0;
	var shake_y = 0;
	shake_x = random_func(0, 4, true) - 2;
	shake_y = random_func(1, 4, true) - 2;
	var drawn = textDraw(table_x + shake_x, table_y + shake_y, "fName", col, 20, width ? width : 1000, fa_left, 1, false, table_should_draw, txt, true);
} else {
	var drawn = textDraw(table_x, table_y, "fName", col, 20, width ? width : 1000, fa_left, 1, false, table_should_draw, txt, true);
}

if !width width = drawn[0];

table_x += (width == side_bar.screen_w * 0.9) ? drawn[0] : width + 15;
if (biggest_height < drawn[1]) biggest_height = drawn[1];

return drawn;



#define decimalToString(input)

if !is_number(input) return(string(input));

input = string(input);
var last_char = string_char_at(input, string_length(input));

if (string_length(input) > 2){
	var third_last_char = string_char_at(input, string_length(input) - 2);
	if (last_char == "0" && third_last_char == ".") input = string_delete(input, string_length(input), 1);
}

if (string_char_at(input, 1) == "0") input = string_delete(input, 1, 1);

return input;



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











