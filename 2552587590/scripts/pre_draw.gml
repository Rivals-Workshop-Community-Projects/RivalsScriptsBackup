if "dx" not in self exit;

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











