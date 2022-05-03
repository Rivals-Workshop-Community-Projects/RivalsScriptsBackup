//draw_hud

if (!variable_instance_exists(id, "sna_prime")) exit;


// Custom Timers
var ui_state_timer = get_gameplay_time() - ui_state_start_time;

var ply_x_true = round(x - view_get_xview());										// Player's visual x position, relative to the camera
var ply_y_true = round(y - view_get_yview());										// Player's visual y position, relative to the camera

var safearea_l = 170;															// Safe area, so hud doesn't go off-screen.
var safearea_r = -170;	
var safearea_u = 160;
var safearea_d = -90;
var ply_x = clamp(ply_x_true, safearea_l, view_get_wview() + safearea_r);
var ply_y = clamp(ply_y_true, safearea_u, view_get_hview() + safearea_d);

var is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);

// Change the inventory origin when hidden in smoke.
if (sna_is_in_smoke) {
	ply_x = temp_x + 100;
	ply_y = temp_y - 80;
}



//=========================================
// DRAW EMOTE ICONS
//=========================================
with (oPlayer) {
	if ("sna_emote_window" not in self) continue;								// Skip players who somehow don't have the emote window variable.
	if (sna_emote_window == 0) continue;										// Skip players who are NOT displaying an emote icon.
	
	var _emote_timer = get_gameplay_time() - sna_emote_start_time;
	var _emote_window = other.sna_emote_windows[sna_emote_window];
	
	if (_emote_window.spr_idx == noone) continue;								// Skip emote icons without sprites.
	
	var _t = _emote_timer / max(_emote_window.length, 1);
	var _img_idx = round(lerp(_emote_window.img_idx_start, _emote_window.img_idx_start + (_emote_window.num_frames - 1), _t));
	var _x_true = round(x - view_get_xview());
	var _y_true = round(y - view_get_yview());
	var _col = _emote_window.col;
	var _spr_pattern = noone;
	with (other) { _spr_pattern = sprite_get("ui_mask_pattern1"); };
	
	gpu_push_state();
	maskHeader();
	draw_sprite_ext(_spr_pattern, 0, 0, 0, 2, 2, 0, c_white, 1);
	maskMidder();
	
	// Draw emote icon
	draw_sprite_ext(_emote_window.spr_idx, _img_idx, _x_true, _y_true - char_height - 20, 2, 2, 0, _col, 1 );
	
	maskFooter();
	gpu_pop_state();
	draw_sprite_ext(_emote_window.spr_idx, _img_idx, _x_true, _y_true - char_height - 20, 2, 2, 0, _col, 0.3 );
	
	//draw_debug_text(_x_true, _y_true + 20, string(sna_emote_window));
	
}


//=========================================
// DELETEME: ALERT SHADER TEST
//=========================================
/*if (variable_instance_exists(id, "char_height") ) {
	gpu_push_state();
	maskHeader();
	draw_sprite_ext(sprite_get("ui_mask_pattern1"), 0, 0, 0, 2, 2, 0, c_white, 1);
	maskMidder();
	draw_sprite_ext(sprite_get("ui_emote_alert"), floor(get_gameplay_time() / 4), ply_x_true, ply_y_true - char_height - 20, 2, 2, 0, #ff7a7a, 1);
	maskFooter();
	gpu_pop_state();
	draw_sprite_ext(sprite_get("ui_emote_alert"), floor(get_gameplay_time() / 4), ply_x_true, ply_y_true - char_height - 20, 2, 2, 0, #ff7a7a, 0.3);
}*/



//=========================================
// DRAW CROSSHAIR
//=========================================

if (variable_instance_exists(id, "inv_firearm") ) {
	if (sna_is_aiming && !sna_is_in_smoke) {									// If aiming a weapon...
		
		var _cur_firearm = dict_equipment[inv_firearm];
		//var ray_x_true = round(sna_aim_raycast_x - view_get_xview());
		//var ray_y_true = round(sna_aim_raycast_y - view_get_yview());
		var ray_y_true = x + sna_muzzle_x + lengthdir_x(_crosshair_dist, sna_aim_dir);
		var ray_y_true = y + sna_muzzle_y + lengthdir_y(_crosshair_dist, sna_aim_dir);
		
		var _crosshair_dist = _cur_firearm.crosshair_distance;
		
		var _muzzle_x_true = round(x + sna_muzzle_x - view_get_xview());							// Muzzle visual x position, relative to the camera
		var _muzzle_y_true = round(y + sna_muzzle_y - view_get_yview());							// Muzzle visual y position, relative to the camera
		
		var _crosshair_opacity = 1;
		
		// Calculate the crosshair angle
		var _ang_difference = angle_difference(sna_aim_dir, sna_aim_dir_target);	// Get the angle difference between the current direction, and the target direction.
		var angle_adj_dir = (_ang_difference > 0) ? -1 : 1;							// Get whether or not the angle difference is positive or negative.
		if (_ang_difference == 0 || sna_lock_aiming) {									// If NOT moving the crosshair...
		sna_aim_crosshair_angle = lerp(sna_aim_crosshair_angle, 0,  0.1);			// Rotate the crosshair towards the neutral position.
		}
		else {																		// If moving the crosshair...
			sna_aim_crosshair_angle = lerp(sna_aim_crosshair_angle, 45 * angle_adj_dir, 0.1 );	// Rotate the crosshair in the direction you're aiming.
		}
		
		/*if (sna_aim_target != noone) {
			draw_sprite_ext(sprite_get("ui_crosshair"), 0, ray_x_true, ray_y_true, 2, 2, sna_aim_crosshair_angle, c_white, 1 );		// Draw the raycast crosshair.
			_crosshair_opacity = 0.5;
		}*/
		draw_sprite_ext(sprite_get("ui_crosshair"), 0, _muzzle_x_true + lengthdir_x(_crosshair_dist, sna_aim_dir), _muzzle_y_true + lengthdir_y(_crosshair_dist, sna_aim_dir), 2, 2, sna_aim_crosshair_angle, c_white, _crosshair_opacity );		// Draw the main crosshair.
		
	}
}


//=========================================
// DRAW SUPPLY DROP MARKER
//=========================================
if (get_gameplay_time() < supplydrop_request_time + supplydrop_wait_time) {
	
	var supplypoint_x_true = round(supplydrop_point_x - view_get_xview());							// Player's visual x position, relative to the camera
	var supplypoint_y_true = round(supplydrop_point_y - view_get_yview());							// Player's visual y position, relative to the camera
	
	// Draw marker
	draw_sprite_ext(sprite_get("ui_supply_marker"), 0, supplypoint_x_true, supplypoint_y_true, 2, 2, 0, c_white, 0.7);
	
	
	// Draw wait time gauge
	var _start_x = supplypoint_x_true - 15;
	var _start_y = supplypoint_y_true + 20;
	var _width = 30;
	var _height = 1;
	
	
	
	var _len = lerp(-1, _width, (get_gameplay_time() - supplydrop_request_time) / max(1, supplydrop_wait_time));
	
	draw_rectangle_color(_start_x - 2, _start_y - 2, _start_x + _width + 2, _start_y + _height + 2, c_black, c_black, c_black, c_black, false);
	draw_rectangle_color(_start_x, _start_y, _start_x + _width, _start_y + _height, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false );
	draw_rectangle_color(_start_x, _start_y, _start_x + _len, _start_y + _height, c_yellow, c_yellow, c_yellow, c_yellow, false );
	
	
}



//=========================================
// DRAW CQC UI
//=========================================
if (instance_exists(sna_grabbed_playerid)) {
	
	// Grip Meter
	var _start_x = ply_x - 30;
	var _start_y = ply_y + 10;
	var _width = 60;
	var _height = 1;
	
	var _len = lerp(-1, _width, sna_grab_time / max(1, sna_grab_time_max));
	
	// Change the colour of the bar depending on the alert state.
	var _col_alert = /*#*/$5a41ff;
	var _col_sneak = /*#*/$ebff6a;
	
	var _grip_col = /*#*/$6cf5ff;
	switch (sna_stealth_state) {
		case 0: // SNEAK
			_grip_col = _col_sneak;
		break;
		case 2: // EVASION
		case 3: // ALERT
			_grip_col = _col_alert;
		break;
	}
	
	draw_rectangle_color(_start_x - 2, _start_y - 2, _start_x + _width + 2, _start_y + _height + 2, c_black, c_black, c_black, c_black, false);
	draw_rectangle_color(_start_x, _start_y, _start_x + _width, _start_y + _height, c_dkgray, c_dkgray, c_dkgray, c_dkgray, false );
	draw_rectangle_color(_start_x, _start_y, _start_x + _len, _start_y + _height, _grip_col, _grip_col, _grip_col, _grip_col, false );
	
}




//=========================================
// DRAW ALERT STATUS
//=========================================
var _ui_alert_x = temp_x + 102;
var _ui_alert_y = temp_y - 440;

var _col_alert = /*#*/$4050af;
var _col_evasion = /*#*/$3885dc;
var _col_caution = /*#*/$2f8dbb;

switch(sna_stealth_state) {
	
	case 1: // CAUTION
		var _warning_flash_rate = 120; // 30 for alert, 60 for evasion, 120 for caution
		var _warning_flash_maxalpha = 1.0;
		var _warning_flash_alpha = (1 - ((get_gameplay_time() % _warning_flash_rate) / _warning_flash_rate)) * _warning_flash_maxalpha;
		
		var _alertnum = sna_stealth_state_awareness;							// Alert awareness number
		var _alertnum_whole = floor(_alertnum);									// Alert awareness number whole digits
		var _alertnum_decimal = round((_alertnum - _alertnum_whole) * 100);		// Alert awareness number decimal digits
		var _str_alertnum_decimal_padded = string_replace_all(string_format(_alertnum_decimal, 2, 0), " ", "0");
		
		// Print Text
		textDraw_custom(_ui_alert_x, _ui_alert_y, "fName", _col_caution, 20, 100, fa_center, 1, 1, true, 0.2, 1.0, "CAUTION");
		textDraw_custom(_ui_alert_x, _ui_alert_y + 14, "roundFont", c_white, 20, 100, fa_right, 1, 1, true, 0.2, 1.0, string(_alertnum_whole));	// Print Whole Number
		textDraw_custom(_ui_alert_x, _ui_alert_y + 20, "fName", c_white, 20, 100, fa_left, 1, 1, true, 0.2, 1.0, "." + _str_alertnum_decimal_padded); // Print Decimal Places
		
		gpu_push_state();
		gpu_set_blendmode(bm_add);
		
		textDraw_custom(_ui_alert_x, _ui_alert_y, "fName", _col_caution, 20, 100, fa_center, 1, 1, false, 1, _warning_flash_alpha, "CAUTION");			// Print flashing text effect
		
		gpu_set_blendmode(bm_normal);
		gpu_pop_state();
	break;
	
	case 2: // EVASION
		var _warning_flash_rate = 60; // 30 for alert, 60 for evasion, 120 for caution
		var _warning_flash_maxalpha = 1.0;
		var _warning_flash_alpha = (1 - ((get_gameplay_time() % _warning_flash_rate) / _warning_flash_rate)) * _warning_flash_maxalpha;
		
		var _alertnum = sna_stealth_state_awareness;							// Alert awareness number
		var _alertnum_whole = floor(_alertnum);									// Alert awareness number whole digits
		var _alertnum_decimal = round((_alertnum - _alertnum_whole) * 100);		// Alert awareness number decimal digits
		var _str_alertnum_decimal_padded = string_replace_all(string_format(_alertnum_decimal, 2, 0), " ", "0");
		
		// Print Text
		textDraw_custom(_ui_alert_x, _ui_alert_y, "fName", _col_evasion, 20, 100, fa_center, 1, 1, true, 0.2, 1.0, "EVASION");
		textDraw_custom(_ui_alert_x, _ui_alert_y + 14, "roundFont", c_white, 20, 100, fa_right, 1, 1, true, 0.2, 1.0, string(_alertnum_whole));	// Print Whole Number
		textDraw_custom(_ui_alert_x, _ui_alert_y + 20, "fName", c_white, 20, 100, fa_left, 1, 1, true, 0.2, 1.0, "." + _str_alertnum_decimal_padded); // Print Decimal Places
		
		gpu_push_state();
		gpu_set_blendmode(bm_add);
		
		textDraw_custom(_ui_alert_x, _ui_alert_y, "fName", _col_evasion, 20, 100, fa_center, 1, 1, false, 1, _warning_flash_alpha, "EVASION");			// Print flashing text effect
		
		gpu_set_blendmode(bm_normal);
		gpu_pop_state();
	break;
	
	case 3: // ALERT
		var _warning_flash_rate = 30; // 30 for alert, 60 for evasion, 120 for caution
		var _warning_flash_maxalpha = 1.0;
		var _warning_flash_alpha = (1 - ((get_gameplay_time() % _warning_flash_rate) / _warning_flash_rate)) * _warning_flash_maxalpha;
		
		var _alertnum = sna_stealth_state_awareness;							// Alert awareness number
		var _alertnum_whole = floor(_alertnum);									// Alert awareness number whole digits
		var _alertnum_decimal = round((_alertnum - _alertnum_whole) * 100);		// Alert awareness number decimal digits
		var _str_alertnum_decimal_padded = string_replace_all(string_format(_alertnum_decimal, 2, 0), " ", "0");
		
		// Print Text
		textDraw_custom(_ui_alert_x, _ui_alert_y, "fName", _col_alert, 20, 100, fa_center, 1, 1, true, 0.2, 1.0, "ALERT");
		textDraw_custom(_ui_alert_x, _ui_alert_y + 14, "roundFont", c_white, 20, 100, fa_right, 1, 1, true, 0.2, 1.0, string(_alertnum_whole));	// Print Whole Number
		textDraw_custom(_ui_alert_x, _ui_alert_y + 20, "fName", c_white, 20, 100, fa_left, 1, 1, true, 0.2, 1.0, "." + _str_alertnum_decimal_padded); // Print Decimal Places
		
		gpu_push_state();
		gpu_set_blendmode(bm_add);
		
		textDraw_custom(_ui_alert_x, _ui_alert_y, "fName", _col_alert, 20, 100, fa_center, 1, 1, false, 1, _warning_flash_alpha, "ALERT");			// Print flashing text effect
		
		gpu_set_blendmode(bm_normal);
		gpu_pop_state();
	break;
	
}



//=========================================
// DRAW CQC CAPTIONS
//=========================================
if (instance_exists(sna_grabbed_playerid)) {
	
	var _caption_y = ply_y + 20; 
	
	if (state == PS_ATTACK_GROUND && attack == AT_NTHROW) {
		
		if ((window == 8 && window_timer >= 8) || window == 9) {				// If in the frames that Snake's captions can be displayed...
			
			// Draw Snake's Caption
			if (sna_ingerrogate_timer < 40) {
				switch (sna_interrogate_vox_idx) {
					case 0: // "Talk."
						textDraw(ply_x, _caption_y, "fName", c_white, 20, 200, fa_center, 1, true, 1, "Talk.");
					break;
					case 1: // "Speak."
						textDraw(ply_x, _caption_y, "fName", c_white, 20, 200, fa_center, 1, true, 1, "Speak.");
					break;
					case 2: // "Answer me!"
						textDraw(ply_x, _caption_y, "fName", c_white, 20, 200, fa_center, 1, true, 1, "Answer me!");
					break;
				}
			}
			
			// Draw Opponent's Caption
			if (sna_ingerrogate_timer >= 55 && sna_ingerrogate_timer < 235) {
				with (sna_grabbed_playerid) {
					switch(sna_interrogated_line_idx) {
						case 1: // Interrogated opponent line 1
							textDraw(ply_x, _caption_y, "fName", c_white, 20, 200, fa_center, 1, true, 1, string(sna_interrogated_line_01));
						break;
						case 2: // Interrogated opponent line 2
							textDraw(ply_x, _caption_y, "fName", c_white, 20, 200, fa_center, 1, true, 1, string(sna_interrogated_line_02));
						break;
						case 3: // Interrogated opponent line 3
							textDraw(ply_x, _caption_y, "fName", c_white, 20, 200, fa_center, 1, true, 1, string(sna_interrogated_line_03));
						break;
					}
				}
			}
			
		}
		
	}
		
}



//=========================================
// DRAW INVENTORY
//=========================================
if (variable_instance_exists(id, "ui_state_current") ) {                        // Don't draw custom UI if the UI variables aren't declared.
    
    var _cursor_adj = 0;
    var _x_anim = 0;
	var _y_anim = 0;
	var _grid_w = 78;
	var _grid_h = 52;
	var _margin_w = 26;
	var _bg_a = 1;
	var _ico_a = 1;
    var _ui_cur_state_len = ui_state[ui_state_current].state_length;
    
    //-------------------------------------------
    // Inventory Container Menus
    //-------------------------------------------
    switch (ui_state_current) {                                                 // Get the current UI state
    	
    	case 0: // INV_NOONE
    	break;
    	
    	// Main Menu
    	case 1: // INV_MAIN
    		draw_inv_menu_main(ply_x, ply_y, _grid_w, _grid_h, _margin_w);												// Draw main menu
    	break;
    	
    	// Firearms
    	case 2: // UI_INV_FIREARMS_OPEN
    		draw_inv_menu_cat_open(inv_firearm_containers, _cursor_adj, ply_x, ply_y, 64, -8, _grid_w, _grid_h, _margin_w, true, ui_state_timer, _ui_cur_state_len, 1);
    	break;
    	case 3: // UI_INV_FIREARMS_IDLE
    		draw_inv_menu_cat_idle(inv_firearm_containers, _cursor_adj, ply_x, ply_y, 64, -8, _grid_w, _grid_h, _margin_w, true , 1);
    		if (inv_firearm_containers[ui_cursor_y] != EQ_EMPTY)
    			draw_inv_description(dict_equipment[inv_firearm_containers[ui_cursor_y]], ply_x - 154, ply_y - 144, "F. SPECIAL");
    	break;
    	case 4: // UI_INV_FIREARMS_NEXT
    		draw_inv_menu_cat_next(inv_firearm_containers, _cursor_adj, ply_x, ply_y, 64, -8, _grid_w, _grid_h, _margin_w, true, ui_state_timer, _ui_cur_state_len, 1);
    	break;
    	case 5: // UI_INV_FIREARMS_PREV
    		draw_inv_menu_cat_prev(inv_firearm_containers, _cursor_adj, ply_x, ply_y, 64, -8, _grid_w, _grid_h, _margin_w, true, ui_state_timer, _ui_cur_state_len, 1);
    	break;
    	case 6: // UI_INV_FIREARMS_CLOSE
    		draw_inv_menu_cat_close(inv_firearm_containers, _cursor_adj, ply_x, ply_y, 64, -8, _grid_w, _grid_h, _margin_w, true, ui_state_timer, _ui_cur_state_len, 1);
    	break;
    	
    	// Throwables
    	case 7: // UI_INV_THROWABLES_OPEN
    		draw_inv_menu_cat_open(inv_throwable_containers, _cursor_adj, ply_x, ply_y, 64, -8, _grid_w, _grid_h, _margin_w, true, ui_state_timer, _ui_cur_state_len, 1);
    	break;
    	case 8: // UI_INV_THROWABLES_IDLE
    		draw_inv_menu_cat_idle(inv_throwable_containers, _cursor_adj, ply_x, ply_y, 64, -8, _grid_w, _grid_h, _margin_w, true , 1);
    		draw_inv_description(dict_equipment[inv_throwable_containers[ui_cursor_y]], ply_x - 154, ply_y - 144, "N. SPECIAL");
    	break;
    	case 9: // UI_INV_THROWABLES_NEXT
    		draw_inv_menu_cat_next(inv_throwable_containers, _cursor_adj, ply_x, ply_y, 64, -8, _grid_w, _grid_h, _margin_w, true, ui_state_timer, _ui_cur_state_len, 1);
    	break;
    	case 10: // UI_INV_THROWABLES_PREV
    		draw_inv_menu_cat_prev(inv_throwable_containers, _cursor_adj, ply_x, ply_y, 64, -8, _grid_w, _grid_h, _margin_w, true, ui_state_timer, _ui_cur_state_len, 1);
    	break;
    	case 11: // UI_INV_THROWABLES_CLOSE
    		draw_inv_menu_cat_close(inv_throwable_containers, _cursor_adj, ply_x, ply_y, 64, -8, _grid_w, _grid_h, _margin_w, true, ui_state_timer, _ui_cur_state_len, 1);
    	break;
    	
    	// Plantables
    	case 12: // UI_INV_PLANTABLES_OPEN
    		draw_inv_menu_cat_open(inv_plantable_containers, _cursor_adj, ply_x, ply_y, 64, -8, _grid_w, _grid_h, _margin_w, true, ui_state_timer, _ui_cur_state_len, 1);
    	break;
    	case 13: // UI_INV_PLANTABLES_IDLE
    		draw_inv_menu_cat_idle(inv_plantable_containers, _cursor_adj, ply_x, ply_y, 64, -8, _grid_w, _grid_h, _margin_w, true , 1);
    		draw_inv_description(dict_equipment[inv_plantable_containers[ui_cursor_y]], ply_x - 154, ply_y - 144, "D. SPECIAL");
    	break;
    	case 14: // UI_INV_PLANTABLES_NEXT
    		draw_inv_menu_cat_next(inv_plantable_containers, _cursor_adj, ply_x, ply_y, 64, -8, _grid_w, _grid_h, _margin_w, true, ui_state_timer, _ui_cur_state_len, 1);
    	break;
    	case 15: // UI_INV_PLANTABLES_PREV
    		draw_inv_menu_cat_prev(inv_plantable_containers, _cursor_adj, ply_x, ply_y, 64, -8, _grid_w, _grid_h, _margin_w, true, ui_state_timer, _ui_cur_state_len, 1);
    	break;
    	case 16: // UI_INV_PLANTABLES_CLOSE
    		draw_inv_menu_cat_close(inv_plantable_containers, _cursor_adj, ply_x, ply_y, 64, -8, _grid_w, _grid_h, _margin_w, true, ui_state_timer, _ui_cur_state_len, 1);
    	break;
    	
    	// Items
    	case 17: // UI_INV_ITEMS_OPEN
    		draw_inv_menu_cat_open(inv_item_containers, _cursor_adj, ply_x, ply_y, -142, -8, _grid_w, _grid_h, _margin_w, false, ui_state_timer, _ui_cur_state_len, -1);
    	break;
    	case 18: // UI_INV_ITEMS_IDLE
    		draw_inv_menu_cat_idle(inv_item_containers, _cursor_adj, ply_x, ply_y, -142, -8, _grid_w, _grid_h, _margin_w, false, -1);
    		draw_inv_description(dict_equipment[inv_item_containers[ui_cursor_y]], ply_x - 154, ply_y - 144, "U. SPECIAL");
    	break;
    	case 19: // UI_INV_ITEMS_NEXT
    		draw_inv_menu_cat_next(inv_item_containers, _cursor_adj, ply_x, ply_y, -142, -8, _grid_w, _grid_h, _margin_w, false, ui_state_timer, _ui_cur_state_len, -1);
    	break;
    	case 20: // UI_INV_ITEMS_PREV
    		draw_inv_menu_cat_prev(inv_item_containers, _cursor_adj, ply_x, ply_y, -142, -8, _grid_w, _grid_h, _margin_w, false, ui_state_timer, _ui_cur_state_len, -1);
    	break;
    	case 21: // UI_INV_ITEMS_CLOSE
    		draw_inv_menu_cat_close(inv_item_containers, _cursor_adj, ply_x, ply_y, -142, -8, _grid_w, _grid_h, _margin_w, false, ui_state_timer, _ui_cur_state_len, -1);
    	break;
    
    	
    }
    
    // TODO: Move this into the above switch statement ^^^
    switch (ui_state_current) {
    	case 0: // INV_NOONE
    		
    		// Draw equipped throwable
    		if (is_attacking && attack == AT_NSPECIAL)																											// If in nspecial...
    			draw_inventory_container( dict_equipment[inv_throwable], temp_x + 142, temp_y - 48, 0, 0, _grid_w, _grid_h, _margin_w, 0, 1, 1, false, true);	// Draw the equipped throwable
    		
    		// Draw equipped plantable
    		else if (is_attacking && attack == AT_DSPECIAL)																										// If in dspecial...
    			draw_inventory_container( dict_equipment[inv_plantable], temp_x + 142, temp_y - 48, 0, 0, _grid_w, _grid_h, _margin_w, 0, 1, 1, false, true);	// Draw the equipped plantable
    		
    		// Draw equipped firearm
    		else if (inv_firearm != EQ_EMPTY)																													// If in any other state, and a firearm is equipped...
    			draw_inventory_container( dict_equipment[inv_firearm], temp_x + 142, temp_y - 48, 0, 0, _grid_w, _grid_h, _margin_w, 0, 1, 1, false, true);		// Draw the equipped firearm
    			
    			
    			// TODO: When using a plantable or throwable, draw it's icon/stats, instead of the firearm.
    		
    		
    		// Draw equipped item
    		if !(inv_item == EQ_EMPTY || (inv_item == EQ_BOX && !sna_box_is_equipped))																			// If an item is equipped...
    			draw_inventory_container( dict_equipment[inv_item], temp_x - 8, temp_y - 48, 0, 0, _grid_w, _grid_h, _margin_w, 0, 1, 1, false, false );		// Draw the equipped item
    		
    	break;
    }
    
}



//=========================================
// DRAW SUPPLY MENU
//=========================================
if (variable_instance_exists(id, "ui_state_current") ) {                        // Don't draw custom UI if the UI variables aren't declared.
	
	var _orig_x = temp_x - 22;
	var _orig_y = temp_y - 184;
	
	var _grid_w = 62;
	var _grid_h = 46;
	
	var _cursor_max_x = 4;
	var _cursor_max_y = 4;
	
	if (supply_menu_open) {                                                 	// If the supply menu is open...
			
		// Draw grid rows.
		for (var i = 0; i < _cursor_max_y; i++) {
			
			// Draw Row Grid
			var _row_subimg = (ui_cursor_y == i) ? 1 : 0;	// Set the row's subimage to 1 if it's highlighted by the cursor.
			draw_sprite_ext(sprite_get("ui_supply_grid"), _row_subimg, _orig_x, _orig_y + _grid_h * i, 2, 2, 0, c_white, 1);	// Draw the grid
			
			// Draw Row Label
			var _row_label = "";
			switch (i) {
				case 0: _row_label = "FIREARMS"; break;
				case 1: _row_label = "THROWING"; break;
				case 2: _row_label = "PLACED"; break;
				case 3: _row_label = "ITEMS"; break;
			}
			textDraw(_orig_x + 2, _orig_y + 1 + _grid_h * i, "fName", /*#*/$a0ab95, 20, 250, fa_left, 1, false, 1, string(_row_label));	// Draw the row label
			
			// Draw Equipment Icons
			for (var j = 0; j < array_length(supply_containers[i]); j++) {
				var _equip = dict_equipment[supply_containers[i, j].linked_equip];
				
				var _ico_idx = (_equip.uses_suppressors) ? _equip.icon_index_s : _equip.icon_index; // Set the icon image index.
				
				draw_sprite_ext(sprite_get("ui_inv_icons"), _ico_idx, (_orig_x + _grid_w * j) - 10, (_orig_y + _grid_h * i) + 12, 2, 2, 0, c_white, 1 ); // Draw the equipment icon
			}
		}
		
		// Draw Cursor
		draw_sprite_ext(sprite_get("ui_supply_cursor"), 0, 2 + _orig_x + ui_cursor_x * _grid_w, 14 + _orig_y + ui_cursor_y * _grid_h, 2, 2, 0, c_white, 1);	// Draw the cursor
		
		// Draw equipment name
		var _linked_equip = supply_containers[ui_cursor_y, ui_cursor_x].linked_equip;
		var _highlighted_name = dict_equipment[_linked_equip].fullname;
		
		textDraw(_orig_x + 125, _orig_y - 15, "fName", c_white, 20, 250, fa_center, 1, true, 1, string_upper(_highlighted_name)); // Print equipment name.
		
	}
	
}


//=========================================
// DRAW BUTTON PROMPTS
//=========================================
var _col_prompt = /*#*/$2ca4ff; // Orange (Peace Walker)
//var _col_prompt = #bbcc7a; // Green-ish (MGS2)

// In-Game Prompts


// Practice Mode Prompts
if (get_match_setting( SET_PRACTICE )) {										// Practice mode only prompts
	
	// Box Tutorial Prompts
	if (sna_box_is_equipped) {
		
		draw_sprite_ext(sprite_get("ui_prompts"), 4, ply_x - 80, ply_y - 120, 2, 2, 0, _col_prompt, 0.9);
		draw_sprite_ext(sprite_get("ui_prompts"), 7, ply_x - 50, ply_y - 120, 2, 2, 0, _col_prompt, 0.9);
		textDraw_custom(ply_x - 20, ply_y - 120, "fName", _col_prompt, 20, 400, fa_left, 1, 1, true, 0.15, 0.9, "Unequip Box");
		// Exit Box Prompt
		draw_sprite_ext(sprite_get("ui_prompts"), 10, ply_x - 50, ply_y - 90, 2, 2, 0, _col_prompt, 0.9);
		textDraw_custom(ply_x - 20, ply_y - 90, "fName", _col_prompt, 20, 400, fa_left, 1, 1, true, 0.15, 0.9, "Leave Box");
	}
	
	if (is_attacking) {
		switch(attack){
			
			// CQC Tutorial Prompts
			case AT_NTHROW:
			
				var _st_prompt = "(Repeatedly) Choke";
				
				switch (window) {
					case 5: case 6: case 7:
						_st_prompt = "Throw";
					break;
				}
				
				switch (window) {
					case 3: case 4: case 5: case 6: case 7: case 8: case 9: case 10: case 11: case 12: case 13: case 14:
						// Throw/Choke Prompt
						draw_sprite_ext(sprite_get("ui_prompts"), 9, ply_x - 50, ply_y - 150, 2, 2, 0, _col_prompt, 0.9);
						textDraw_custom(ply_x - 20, ply_y - 150, "fName", _col_prompt, 20, 400, fa_left, 1, 1, true, 0.15, 0.9, _st_prompt);
						// Choke Prompt
						draw_sprite_ext(sprite_get("ui_prompts"), 7, ply_x - 50, ply_y - 120, 2, 2, 0, _col_prompt, 0.9);
						textDraw_custom(ply_x - 20, ply_y - 120, "fName", _col_prompt, 20, 400, fa_left, 1, 1, true, 0.15, 0.9, "Aim weapon");
						// Interrogate Prompt
						draw_sprite_ext(sprite_get("ui_prompts"), 11, ply_x - 50, ply_y - 90, 2, 2, 0, _col_prompt, 0.9);
						textDraw_custom(ply_x - 20, ply_y - 90, "fName", _col_prompt, 20, 400, fa_left, 1, 1, true, 0.15, 0.9, "Interrogate");
					break;
				}
				
			break;
			
			// Throwing Weapon Tutorial Prompts
			case AT_NSPECIAL:
				// Throw Prompt
				draw_sprite_ext(sprite_get("ui_prompts"), 6, ply_x - 50, ply_y - 90, 2, 2, 0, _col_prompt, 0.9);
				textDraw_custom(ply_x - 20, ply_y - 90, "fName", _col_prompt, 20, 400, fa_left, 1, 1, true, 0.15, 0.9, "Throw");
			break;
			
			// Firearm Tutorial Prompts
			case AT_FSPECIAL:
				// Aim Prompt
				draw_sprite_ext(sprite_get("ui_prompts"), 10, ply_x - 50, ply_y - 150, 2, 2, 0, _col_prompt, 0.9);
				textDraw_custom(ply_x - 20, ply_y - 150, "fName", _col_prompt, 20, 400, fa_left, 1, 1, true, 0.15, 0.9, "Aim");
				// Fire Prompt
				draw_sprite_ext(sprite_get("ui_prompts"), 6, ply_x - 50, ply_y - 120, 2, 2, 0, _col_prompt, 0.9);
				textDraw_custom(ply_x - 20, ply_y - 120, "fName", _col_prompt, 20, 400, fa_left, 1, 1, true, 0.15, 0.9, "Fire");
				// Reload Prompt
				draw_sprite_ext(sprite_get("ui_prompts"), 11, ply_x - 50, ply_y - 90, 2, 2, 0, _col_prompt, 0.9);
				textDraw_custom(ply_x - 20, ply_y - 90, "fName", _col_prompt, 20, 400, fa_left, 1, 1, true, 0.15, 0.9, "Reload");
			break;
			
			// Placed Weapon Tutorial Prompts
			case AT_DSPECIAL:
				// Plant Prompt
				draw_sprite_ext(sprite_get("ui_prompts"), 7, ply_x - 50, ply_y - 120, 2, 2, 0, _col_prompt, 0.9);
				textDraw_custom(ply_x - 20, ply_y - 120, "fName", _col_prompt, 20, 400, fa_left, 1, 1, true, 0.15, 0.9, "Plant");
				// Detonate Prompt
				draw_sprite_ext(sprite_get("ui_prompts"), 11, ply_x - 50, ply_y - 90, 2, 2, 0, _col_prompt, 0.9);
				textDraw_custom(ply_x - 20, ply_y - 90, "fName", _col_prompt, 20, 400, fa_left, 1, 1, true, 0.15, 0.9, "Detonate");
			break;
			
		}
	}
	
}


//------------------------------------------------------
// Muno phone stuff (bottom)
//------------------------------------------------------
//muno_event_type = 5;
//user_event(14);



//=========================================================
// FUNCTIONS
//=========================================================

//-----------------------------------------
// Draw Inventory Description
//-----------------------------------------
#define draw_inv_description(_inv_index, _x, _y, _category)
draw_sprite_ext(sprite_get("ui_inv_descriptionbox"), 0, _x, _y, 2, 2, 0, c_white, 1);	// Draw the background.
textDraw(_x + 8, _y + 8, "fName", c_white, 20, 208 - 8, fa_left, 1, false, 1, string(_inv_index.fullname) );
textDraw(_x + 8, _y + 28, "fName", c_white, 20, 208 - 8, fa_left, 1, false, 1, string(_inv_index.description) );
textDraw(_x + 2, _y + 129, "fName", c_white, 20, 208 - 8, fa_left, 1, false, 1, string(_category) );



//-----------------------------------------
// Draw Inventory Container
//-----------------------------------------
#define draw_inventory_container( _inv_index, _x, _y, _grid_x, _grid_y, _grid_w, _grid_h, _margin_w, _bg_index, _bg_alpha, _ico_alpha, _draw_margin, _draw_mag_count )

var _w = _grid_w + _margin_w * _draw_margin;
var _h = _grid_h;

draw_sprite_ext(sprite_get("ui_inv_frame"), _bg_index, _x + (_w * _grid_x), _y + (_h * _grid_y), 2, 2, 0, c_white, _bg_alpha );							// Draw the frame
if (_inv_index.icon_index >= 0) {																															// If the icon index is NOT -1...
	if (_inv_index.suppressor_attached)																														// If a suppressor is not attached...
		draw_sprite_ext(sprite_get("ui_inv_icons"), _inv_index.icon_index_s, _x + (_w * _grid_x), _y + (_h * _grid_y), 2, 2, 0, c_white, _ico_alpha);	// Draw the alt item icon
	else																																					// If the item's alt mode is NOT enabled...
		draw_sprite_ext(sprite_get("ui_inv_icons"), _inv_index.icon_index, _x + (_w * _grid_x), _y + (_h * _grid_y), 2, 2, 0, c_white, _ico_alpha);		// Draw the default item icon
}

// Draw ammo
if (_inv_index.uses_ammo) {																																// If the item uses ammo...
	
	textDraw((_x + 72) + (_w * _grid_x), (_y + 23) + (_h * _grid_y), "fName", c_white, 1, 100, fa_right, 1, false, _ico_alpha,
	string(_inv_index.ammo_total) + "/" + string(_inv_index.ammo_total_max) );																			// Print the ammo count.
}

// Draw CQC Compatibility
if (_inv_index.can_cqc) draw_sprite_ext(sprite_get("ui_inv_cqc"), 0, _x + (_w * _grid_x) + 2, _y + (_h * _grid_y) + 2, 2, 2, 0, c_white, _ico_alpha );	// Draw the CQC compatibility indicator

// Draw Suppressor Count, and Durability.
if (_inv_index.suppressor_attached) {
	
	// Suppressor Count
	var _counter_text =  "x" + string_replace(string_format(_inv_index.num_suppressors, 2, 0), " ", "0");											// Set the suppressor counter text.
	textDraw((_x + 74) + (_w * _grid_x), (_y + 0) + (_h * _grid_y), "fName", c_white, 1, 100, fa_right, 1, false, _ico_alpha, _counter_text );		// Draw the number of spare suppressors.
	
	// Suppressor Durability
	var _bar_length = lerp(0, 2, _inv_index.suppressor_durability / 100);																			// Get the durability bar length.
	var _bar_x = 22;
	var _bar_y = 0;
	draw_sprite_ext(sprite_get("ui_inv_supp_lyr0"), 0, _x + (_w * _grid_x) + _bar_x, _y + (_h * _grid_y) + _bar_y, 2,	2, 0, c_white, _ico_alpha );	// Draw the bottom layer of the suppressor durability bar
	draw_sprite_ext(sprite_get("ui_inv_supp_lyr1"), 0, _x + (_w * _grid_x) + _bar_x + 2, _y + (_h * _grid_y) + _bar_y + 2, _bar_length,	2, 0, c_white, _ico_alpha );	// Draw the middle layer of the suppressor durability bar
	draw_sprite_ext(sprite_get("ui_inv_supp_lyr2"), 0, _x + (_w * _grid_x) + _bar_x, _y + (_h * _grid_y) + _bar_y, 2, 			2, 0, c_white, _ico_alpha );	// Draw the top layer of the suppressor durability bar
	
}

// Draw either the weapon name, or the magazine count.	
if (_inv_index.uses_magazines && _draw_mag_count) {																									// If the item uses magazines, and draw_mag_count is enabled...
	var _col = c_white;
	
	for (var i = 0; i < _inv_index.ammo_mag_max; i++ ) {
		
		// Set bullet colour
		if (i >= _inv_index.ammo_mag) _col = c_gray;																								// Darken the bullet icons for spent rounds.
		
		draw_sprite_ext(sprite_get("ui_inv_bullet"), 0, (_x + 66) + (_w * _grid_x) + (-6 * i), (_y + 35) + (_h * _grid_y), 2, 2, 0, _col, 1 );		// Draw the bullet icons.
		
		if (i > 30) break;																												// Only draw a maximum number of bullets.
	}
}
else {																																					// If the mag count can NOT be drawn...
	textDraw((_x + 72) + (_w * _grid_x), (_y + 35) + (_h * _grid_y), "fName", c_white, 1, 100, fa_right, 1, false, _ico_alpha, _inv_index.name );		// Draw the item name instead.
}

// Draw EMPTY indicator

if (_inv_index.uses_ammo && _inv_index.ammo_total < 1)																								// If the weapon is out of ammo...
	draw_sprite_ext(sprite_get("ui_inv_empty"), 0, _x + (_w * _grid_x), _y + (_h * _grid_y), 2, 2, 0, c_white, _ico_alpha);							// Draw the EMPTY indicator.

// Draw Margin (For firearms only!)
if (_draw_margin) {
	
	var _margin_idx = 0;
	
	if (_inv_index == dict_equipment[inv_firearm_prev]) _margin_idx = 2;																// Last equipped margin colour
	
	if (
		_inv_index == dict_equipment[inv_firearm] ||
		_inv_index == dict_equipment[inv_throwable] ||
		_inv_index == dict_equipment[inv_plantable] ||
		_inv_index == dict_equipment[inv_item]
	) _margin_idx = 1;																													// Current equipped margin colour
	
	if (_inv_index == dict_equipment[EQ_EMPTY] && dict_equipment[inv_firearm] == dict_equipment[inv_firearm_prev])						// If you're switched to the previously equipped firearm...
		_margin_idx = 2;																												// Last equipped margin colour
		
	draw_sprite_ext(sprite_get("ui_inv_margin"), _margin_idx, _x + (_w - _margin_w * _draw_margin) + (_w * _grid_x), _y + (_h * _grid_y), 2, 2, 0, c_white, 1);	// Draw the margin
	
}



//-----------------------------------------
// Draw Main Menu
//-----------------------------------------
#define draw_inv_menu_main(_x_orig, _y_orig, _grid_w, _grid_h, _margin_w)
var _container_adj = 0;
var _col_prompt = /*#*/$2ca4ff; // Orange (Peace Walker)
//var _col_prompt = #bbcc7a; // Green-ish (MGS2)


// Draw next/previous cycle equipment.
if (inv_display_cycle) {														// If your equipment was cycled...
	
	var _opac = ease_cubeIn(1, 0, ui_state_timer, ui_state[ui_state_current].state_length);		// Set the fade opacity
	
	if (inv_display_cycled_category == 1) {
		_container_adj = add_looped(inv_firearm_container, -1, array_length(inv_firearm_containers));
		draw_inventory_container( dict_equipment[inv_firearm_containers[_container_adj]], _x_orig + 64, _y_orig - 56 - _grid_h, 0, 0, _grid_w, _grid_h, _margin_w, 0, 0.2*_opac, 0.5*_opac, false, false );	// Draw the previous firearm
		_container_adj = add_looped(inv_firearm_container, 1, array_length(inv_firearm_containers));
		draw_inventory_container( dict_equipment[inv_firearm_containers[_container_adj]], _x_orig + 64, _y_orig - 56 + _grid_h, 0, 0, _grid_w, _grid_h, _margin_w, 0, 0.2*_opac, 0.5*_opac, false, false );	// Draw the next firearm
	}
	else if (inv_display_cycled_category == 2) {
		_container_adj = add_looped(inv_throwable_container, -1, array_length(inv_throwable_containers));
		draw_inventory_container( dict_equipment[inv_throwable_containers[_container_adj]], _x_orig - 138, _y_orig - 56  - _grid_h, 0, 0, _grid_w, _grid_h, _margin_w, 0, 0.2*_opac, 0.5*_opac, false, false );		// Draw the previous item
		_container_adj = add_looped(inv_throwable_container, 1, array_length(inv_throwable_containers));
		draw_inventory_container( dict_equipment[inv_throwable_containers[_container_adj]], _x_orig - 138, _y_orig - 56 + _grid_h, 0, 0, _grid_w, _grid_h, _margin_w, 0, 0.2*_opac, 0.5*_opac, false, false );		// Draw the next item
	}
	else if (inv_display_cycled_category == 3) {
		_container_adj = add_looped(inv_plantable_container, -1, array_length(inv_plantable_containers));
		draw_inventory_container( dict_equipment[inv_plantable_containers[_container_adj]], _x_orig - 37 - _grid_w, _y_orig + 32, 0, 0, _grid_w, _grid_h, _margin_w, 0, 0.2*_opac, 0.5*_opac, false, false );	// Draw the previous plantable
		_container_adj = add_looped(inv_plantable_container, 1, array_length(inv_plantable_containers));
		draw_inventory_container( dict_equipment[inv_plantable_containers[_container_adj]], _x_orig - 37 + _grid_w, _y_orig + 32, 0, 0, _grid_w, _grid_h, _margin_w, 0, 0.2*_opac, 0.5*_opac, false, false );	// Draw the next plantable
	}
	else if (inv_display_cycled_category == 4) {
		_container_adj = add_looped(inv_item_container, -1, array_length(inv_item_containers));
		draw_inventory_container( dict_equipment[inv_item_containers[_container_adj]], _x_orig - 37 - _grid_w, _y_orig - 144, 0, 0, _grid_w, _grid_h, _margin_w, 0, 0.2*_opac, 0.5*_opac, false, false );	// Draw the previous throwable
		_container_adj = add_looped(inv_item_container, 1, array_length(inv_item_containers));
		draw_inventory_container( dict_equipment[inv_item_containers[_container_adj]], _x_orig - 37 + _grid_w, _y_orig - 144, 0, 0, _grid_w, _grid_h, _margin_w, 0, 0.2*_opac, 0.5*_opac, false, false );	// Draw the next throwable
	}
}

// Draw Main Inventory Category Icons
draw_inventory_container( dict_equipment[inv_firearm], _x_orig + 64, _y_orig - 56, 0, 0, _grid_w, _grid_h, _margin_w, 0, 1, 1, false, false );			// Draw the equipped firearm
draw_inventory_container( dict_equipment[inv_item], _x_orig - 37, _y_orig - 144, 0, 0, _grid_w, _grid_h, _margin_w, 0, 1, 1, false, false );			// Draw the equipped throwable
draw_inventory_container( dict_equipment[inv_plantable], _x_orig - 37, _y_orig + 32, 0, 0, _grid_w, _grid_h, _margin_w, 0, 1, 1, false, false );		// Draw the equipped plantable
draw_inventory_container( dict_equipment[inv_throwable], _x_orig - 138, _y_orig - 56, 0, 0, _grid_w, _grid_h, _margin_w, 0, 1, 1, false, false );		// Draw the equipped item

// Draw button prompts
// Thumbstick
draw_sprite_ext(sprite_get("ui_prompts"), 1, _x_orig, _y_orig - 32, 2, 2, 0, _col_prompt, 0.9);
// Arrows
draw_sprite_ext(sprite_get("ui_prompts"), 2, _x_orig + 48, _y_orig - 32, 2, 2, 0, _col_prompt, 0.9); // Right Arrow
draw_sprite_ext(sprite_get("ui_prompts"), 3, _x_orig - 48, _y_orig - 32, 2, 2, 0, _col_prompt, 0.9); // Left Arrow
draw_sprite_ext(sprite_get("ui_prompts"), 4, _x_orig, _y_orig - 80, 2, 2, 0, _col_prompt, 0.9); // Up Arrow
draw_sprite_ext(sprite_get("ui_prompts"), 5, _x_orig, _y_orig + 16, 2, 2, 0, _col_prompt, 0.9); // Down Arrow

// Supply Drop Prompt
draw_sprite_ext(sprite_get("ui_prompts"), 7, _x_orig - 160, _y_orig - 130, 2, 2, 0, _col_prompt, 0.9);
textDraw_custom(_x_orig - 130, _y_orig - 130, "fName", _col_prompt, 20, 400, fa_left, 1, 1, true, 0.15, 0.9, "Supply drop");
// MunoPhone Prompt
/*if (phone_practice) {															// Only display MunoPhone prompt if munophone is available.
	draw_sprite_ext(sprite_get("ui_prompts"), 6, _x_orig - 160, _y_orig - 100, 2, 2, 0, _col_prompt, 0.9);
	textDraw_custom(_x_orig - 130, _y_orig - 100, "fName", _col_prompt, 20, 400, fa_left, 1, 1, true, 0.15, 0.9, "MunoPhone");
}*/

//-----------------------------------------
// Draw UI_INV_CATEGORY_OPEN Menu
//-----------------------------------------
#define draw_inv_menu_cat_open(inv_category_containers, _cursor_adj, _x_origin, _y_origin, _x_offset, _y_offset, _grid_w, _grid_h, _margin_w, _draw_margin, _anim_time, _anim_end_time, _dir)

if (array_length(inv_category_containers) > 3) // Only display if you have more than 3 items
	draw_inv_container_open(_x_origin, _y_origin, _x_offset, -_y_offset, 0, 		-2, _grid_w, _grid_h, _margin_w, -2, _anim_time, _anim_end_time, inv_category_containers, 0, 0.2, 0.5, _draw_margin);		// Prev item 2

if (array_length(inv_category_containers) > 1) // Only display if you have more than 1 item
	draw_inv_container_open(_x_origin, _y_origin, _x_offset, -_y_offset, 0, 		-1, _grid_w, _grid_h, _margin_w, -1, _anim_time, _anim_end_time, inv_category_containers, 0, 0.2, 0.5, _draw_margin);		// Prev item 1

if (array_length(inv_category_containers) > 2) // Only display if you have more than 2 items
	draw_inv_container_open(_x_origin, _y_origin, _x_offset, -_y_offset, -1 * _dir, 0, _grid_w, _grid_h, _margin_w, 1, _anim_time, _anim_end_time, inv_category_containers, 0, 0.2, 0.5, _draw_margin);		// Next item 1

if (array_length(inv_category_containers) > 4) // Only display if you have more than 4 items
	draw_inv_container_open(_x_origin, _y_origin, _x_offset, -_y_offset, -2 * _dir, 0, _grid_w, _grid_h, _margin_w, 2, _anim_time, _anim_end_time, inv_category_containers, 0, 0.2, 0.5, _draw_margin);		// Next item 2

draw_inventory_container( dict_equipment[inv_category_containers[ui_cursor_y]], _x_origin + _x_offset, _y_origin - _y_offset, 0, 0, _grid_w, _grid_h, _margin_w, 1, 0.2, 0.5, _draw_margin, false );		// Main



//-----------------------------------------
// Draw UI_INV_CATEGORY_IDLE Menu
//-----------------------------------------
#define draw_inv_menu_cat_idle(inv_category_containers, _cursor_adj, _x_origin, _y_origin, _x_offset, _y_offset, _grid_w, _grid_h, _margin_w, _draw_margin, _dir)

if (array_length(inv_category_containers) > 3) { // Only display if you have more than 3 items
	_cursor_adj = add_looped(ui_cursor_y, -2, array_length(inv_category_containers));
	draw_inventory_container( dict_equipment[inv_category_containers[_cursor_adj]], _x_origin + _x_offset, _y_origin - _y_offset, 0,		-2, _grid_w, _grid_h, _margin_w, 0, 0.2, 0.5, _draw_margin, false );		// Prev item 2
}

if (array_length(inv_category_containers) > 1) { // Only display if you have more than 1 item
	_cursor_adj = add_looped(ui_cursor_y, -1, array_length(inv_category_containers));
	draw_inventory_container( dict_equipment[inv_category_containers[_cursor_adj]], _x_origin + _x_offset, _y_origin - _y_offset, 0,		-1, _grid_w, _grid_h, _margin_w, 0, 0.2, 0.5, _draw_margin, false );		// Prev item 1
}

if (array_length(inv_category_containers) > 2) { // Only display if you have more than 2 items
	_cursor_adj = add_looped(ui_cursor_y, 1, array_length(inv_category_containers));
	draw_inventory_container( dict_equipment[inv_category_containers[_cursor_adj]], _x_origin + _x_offset, _y_origin - _y_offset, -1 * _dir, 0, _grid_w, _grid_h, _margin_w, 0, 0.2, 0.5, _draw_margin, false );		// Next item 1
}

if (array_length(inv_category_containers) > 4) { // Only display if you have more than 4 items
	_cursor_adj = add_looped(ui_cursor_y, 2, array_length(inv_category_containers));
	draw_inventory_container( dict_equipment[inv_category_containers[_cursor_adj]], _x_origin + _x_offset, _y_origin - _y_offset, -2 * _dir, 0, _grid_w, _grid_h, _margin_w, 0, 0.2, 0.5, _draw_margin, false );		// Next item 2
}

draw_inventory_container( dict_equipment[inv_category_containers[ui_cursor_y]], _x_origin + _x_offset, _y_origin - _y_offset, 0, 0, _grid_w, _grid_h, _margin_w, 1, 1.0, 1.0, _draw_margin, false );		// Main



//-----------------------------------------
// Draw UI_INV_CATEGORY_NEXT Menu
//-----------------------------------------
#define draw_inv_menu_cat_next(inv_category_containers, _cursor_adj, _x_origin, _y_origin, _x_offset, _y_offset, _grid_w, _grid_h, _margin_w, _draw_margin, _anim_time, _anim_end_time, _dir)
var _x_anim = ease_linear(-_grid_w * _dir, 0, _anim_time, _anim_end_time );
var _y_anim = ease_linear(_grid_h,			0, _anim_time, _anim_end_time );

if (array_length(inv_category_containers) > 3) { // Only display if you have more than 3 items
	_cursor_adj = add_looped(ui_cursor_y, -2, array_length(inv_category_containers));
	draw_inventory_container( dict_equipment[inv_category_containers[_cursor_adj]], _x_origin + _x_offset, _y_origin - _y_offset + _y_anim, 0,		-2, _grid_w, _grid_h, _margin_w, 0, 0.2, 0.5, _draw_margin, false );	// Prev item 2
}

if (array_length(inv_category_containers) > 1) { // Only display if you have more than 1 item
	_cursor_adj = add_looped(ui_cursor_y, -1, array_length(inv_category_containers));
	draw_inventory_container( dict_equipment[inv_category_containers[_cursor_adj]], _x_origin + _x_offset, _y_origin - _y_offset + _y_anim, 0,		-1, _grid_w, _grid_h, _margin_w, 0, 0.2, 0.5, _draw_margin, false );	// Prev item 1
}

if (array_length(inv_category_containers) > 2) { // Only display if you have more than 2 items
	_cursor_adj = add_looped(ui_cursor_y, 1, array_length(inv_category_containers));
	draw_inventory_container( dict_equipment[inv_category_containers[_cursor_adj]], _x_origin + _x_offset + _x_anim, _y_origin - _y_offset, -1 * _dir, 0, _grid_w, _grid_h, _margin_w, 0, 0.2, 0.5, _draw_margin, false );	// Next item 1
}

if (array_length(inv_category_containers) > 4) { // Only display if you have more than 4 items
	_cursor_adj = add_looped(ui_cursor_y, 2, array_length(inv_category_containers));
	draw_inventory_container( dict_equipment[inv_category_containers[_cursor_adj]], _x_origin + _x_offset + _x_anim, _y_origin - _y_offset, -2 * _dir, 0, _grid_w, _grid_h, _margin_w, 0, 0.2, 0.5, _draw_margin, false );	// Next item 2
}

draw_inventory_container( dict_equipment[inv_category_containers[ui_cursor_y]], _x_origin + _x_offset + _x_anim, _y_origin - _y_offset, 0, 0, _grid_w, _grid_h, _margin_w, 1, 0.2, 0.5, _draw_margin, false );		// Main



//-----------------------------------------
// Draw UI_INV_CATEGORY_PREV Menu
//-----------------------------------------
#define draw_inv_menu_cat_prev(inv_category_containers, _cursor_adj, _x_origin, _y_origin, _x_offset, _y_offset, _grid_w, _grid_h, _margin_w, _draw_margin, _anim_time, _anim_end_time, _dir)
var _x_anim = ease_linear(_grid_w * _dir, 0, _anim_time, _anim_end_time );
var _y_anim = ease_linear(-_grid_h, 		0, _anim_time, _anim_end_time );

if (array_length(inv_category_containers) > 3) { // Only display if you have more than 3 items
	_cursor_adj = add_looped(ui_cursor_y, -2, array_length(inv_category_containers));
	draw_inventory_container( dict_equipment[inv_category_containers[_cursor_adj]], _x_origin + _x_offset, _y_origin - _y_offset + _y_anim, 0,		-2, _grid_w, _grid_h, _margin_w, 0, 0.2, 0.5, _draw_margin, false );	// Prev item 2
}

if (array_length(inv_category_containers) > 1) { // Only display if you have more than 1 item
	_cursor_adj = add_looped(ui_cursor_y, -1, array_length(inv_category_containers));
	draw_inventory_container( dict_equipment[inv_category_containers[_cursor_adj]], _x_origin + _x_offset, _y_origin - _y_offset + _y_anim, 0,		-1, _grid_w, _grid_h, _margin_w, 0, 0.2, 0.5, _draw_margin, false );	// Prev item 1
}

if (array_length(inv_category_containers) > 2) { // Only display if you have more than 2 items
	_cursor_adj = add_looped(ui_cursor_y, 1, array_length(inv_category_containers));
	draw_inventory_container( dict_equipment[inv_category_containers[_cursor_adj]], _x_origin + _x_offset + _x_anim, _y_origin - _y_offset, -1 * _dir, 0, _grid_w, _grid_h, _margin_w, 0, 0.2, 0.5, _draw_margin, false );	// Next item 1
}

if (array_length(inv_category_containers) > 4) { // Only display if you have more than 4 items
	_cursor_adj = add_looped(ui_cursor_y, 2, array_length(inv_category_containers));
	draw_inventory_container( dict_equipment[inv_category_containers[_cursor_adj]], _x_origin + _x_offset + _x_anim, _y_origin - _y_offset, -2 * _dir, 0, _grid_w, _grid_h, _margin_w, 0, 0.2, 0.5, _draw_margin, false );	// Next item 2
}

draw_inventory_container( dict_equipment[inv_category_containers[ui_cursor_y]], _x_origin + _x_offset, _y_origin - _y_offset + _y_anim, 0, 0, _grid_w, _grid_h, _margin_w, 1, 0.2, 0.5, _draw_margin, false );		// Main



//-----------------------------------------
// Draw UI_INV_CATEGORY_CLOSE Menu
//-----------------------------------------
#define draw_inv_menu_cat_close(inv_category_containers, _cursor_adj, _x_origin, _y_origin, _x_offset, _y_offset, _grid_w, _grid_h, _margin_w, _draw_margin, _anim_time, _anim_end_time, _dir)

if (array_length(inv_category_containers) > 3) // Only display if you have more than 3 items
	draw_inv_container_close(_x_origin, _y_origin, _x_offset, -_y_offset, 0,		-2, _grid_w, _grid_h, _margin_w, -2,		_anim_time, _anim_end_time, inv_category_containers, 0, 0.2, 0.5, _draw_margin);		// Prev item 2
if (array_length(inv_category_containers) > 3) // Only display if you have more than 3 items
	draw_inv_container_close(_x_origin, _y_origin, _x_offset, -_y_offset, 0,		-1, _grid_w, _grid_h, _margin_w, -1,		_anim_time, _anim_end_time, inv_category_containers, 0, 0.2, 0.5, _draw_margin);		// Prev item 1
if (array_length(inv_category_containers) > 3) // Only display if you have more than 3 items
	draw_inv_container_close(_x_origin, _y_origin, _x_offset, -_y_offset, -1 * _dir, 0, _grid_w, _grid_h, _margin_w, 1, _anim_time, _anim_end_time, inv_category_containers, 0, 0.2, 0.5, _draw_margin);		// Next item 1
if (array_length(inv_category_containers) > 3) // Only display if you have more than 3 items
	draw_inv_container_close(_x_origin, _y_origin, _x_offset, -_y_offset, -2 * _dir, 0, _grid_w, _grid_h, _margin_w, 2, _anim_time, _anim_end_time, inv_category_containers, 0, 0.2, 0.5, _draw_margin);		// Next item 2

draw_inventory_container( dict_equipment[inv_category_containers[ui_cursor_y]], _x_origin + _x_offset, _y_origin - _y_offset, 0, 0, _grid_w, _grid_h, _margin_w, 1, 0.2, 0.5, _draw_margin, false );		// Main



//-----------------------------------------
// Draw Container - "OPEN"
//-----------------------------------------
#define draw_inv_container_open(_x_orig, _y_orig, _x, _y, _grid_x, _grid_y, _grid_w, _grid_h, _margin_w, _list_offset, _anim_time, _anim_end_time, inv_category_containers, _bg_idx, _bg_a, ico_a, _draw_margin )

var _cursor_adj = 0;
var _x_anim = 0;
var _y_anim = 0;

_x_anim = ease_linear(-_grid_w * _grid_x, 0, _anim_time, _anim_end_time );												// Set the Y anim coordinates to move from the origin.
_y_anim = ease_linear(-_grid_h * _grid_y, 0, _anim_time, _anim_end_time );												// Set the Y anim coordinates to move from the origin.

_cursor_adj = add_looped(ui_cursor_y, _list_offset, array_length(inv_category_containers));												// Get the item index for the icon
draw_inventory_container( dict_equipment[inv_category_containers[_cursor_adj]], _x_orig + _x + _x_anim, _y_orig + _y + _y_anim, _grid_x, _grid_y, _grid_w, _grid_h, _margin_w, _bg_idx, _bg_a, ico_a, _draw_margin, false );	// Draw the icon



//-----------------------------------------
// Draw Container - "CLOSE"
//-----------------------------------------
#define draw_inv_container_close(_x_orig, _y_orig, _x, _y, _grid_x, _grid_y, _grid_w, _grid_h, _margin_w, _list_offset, _anim_time, _anim_end_time, inv_category_containers, _bg_idx, _bg_a, ico_a, _draw_margin )

var _cursor_adj = 0;
var _x_anim = 0;
var _y_anim = 0;

_x_anim = ease_linear(0, -_grid_w * _grid_x, _anim_time, _anim_end_time );												// Set the Y anim coordinates to move from the origin.
_y_anim = ease_linear(0, -_grid_h * _grid_y, _anim_time, _anim_end_time );												// Set the Y anim coordinates to move from the origin.

_cursor_adj = add_looped(ui_cursor_y, _list_offset, array_length(inv_category_containers));												// Get the item index for the icon
draw_inventory_container( dict_equipment[inv_category_containers[_cursor_adj]], _x_orig + _x + _x_anim, _y_orig + _y + _y_anim, _grid_x, _grid_y, _grid_w, _grid_h, _margin_w, _bg_idx, _bg_a, ico_a, _draw_margin, false );	// Draw the icon



//-----------------------------------------
// Add Looped
//-----------------------------------------
#define add_looped(variable, val, _max)											// Add a number to a number, looping through when 

/*
	Thanks to CAT in ExW for helping out with this function!
*/

var _newval = (variable + val) % _max;  										// Do the magic that loops the number.
while (_newval < 0) {															// Turn any negative results into a positive number.
  _newval += _max;
}
return _newval;


//---------------------------------------------------------
// Alpha Mask
//---------------------------------------------------------
// Code by Muno https://discord.com/channels/630147058535235604/722892672347668491/889503052929847337
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

#define maskMidderAdd // Edit by me

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_one); // bm_add
//gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_src_colour); // bm_max
gpu_set_alphatestenable(true);

#define maskFooter

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text)

//---------------
// Code by Muno!
//---------------

/*
	Available Fonts:

		"medFont"
		"fName" 		<-- default font
		"roundFont"
		"roaMBLFont"
		"roaLBLFont"
		"tinyFont"
		
*/

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];



//---------------------------------------------------------
// Draw Text (Custom)
//---------------------------------------------------------
#define textDraw_custom(x1, y1, font, color, lineb, linew, align, xscale, yscale, outline, outline_alpha, alpha, text)

//---------------
// Code by Muno!																// (Slightly edited by me, to specify outline alpha.)
//---------------

/*
	Available Fonts:

		"medFont"
		"fName" 		<-- default font
		"roundFont"
		"roaMBLFont"
		"roaLBLFont"
		"tinyFont"
		
*/

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, xscale, yscale, 0, c_black, c_black, c_black, c_black, alpha * outline_alpha);
        }
    }
}

draw_text_ext_transformed_color(x1, y1, text, lineb, linew, xscale, yscale, 0, color, color, color, color, alpha);

return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
