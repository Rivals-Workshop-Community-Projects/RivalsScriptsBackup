// other post draw

//draw_debug_text(x, y + 20, string(depth));
//draw_debug_text(x, y + 20, string(sna_sns_sght_angle));
//draw_debug_text(x, y + 20, string(parry_lag));
//draw_debug_text(x, y + 40, string(sna_psyche_depleted_airtime));
//draw_debug_text(x, y + 20, string(sna_life));
//draw_debug_text(x, y + 20, string(sna_ui_status_state) + " " + string(sna_ui_status_timer));
//draw_debug_text(x, y + 20, string(sna_psyche_depleted));
//draw_debug_text(x, y + 20, string(sna_psyche_ko_type));
//draw_debug_text(x, y + 20, string(sna_is_in_smoke));
//draw_debug_text(x, y + 40, string(sna_sns_sght_sees_snake));

if !(variable_instance_exists(other_player_id, "sna_prime")) exit;				// Don't run this if the variables aren't initialized.


//=========================================
// DRAW GRAB LAYER
//=========================================
if (other_player_id.sna_grabbed_playerid == self) {								// If the current player is grabbed by Snake... (TODO: Add sna_is_grabbed variable, so multiple Snakes can't grab the same player.)
	with (other_player_id) {
		
		var _cur_firearm = dict_equipment[inv_firearm];
		var str_w_name = _cur_firearm.spritename;								// Weapon name string
		var str_w_suppressed = "";												// Declare weapon suppressor prefix.
		switch (_cur_firearm.suppressor_attached) {
			case true:
				str_w_suppressed = "s";											// Set suppressed prefix if a suppressor is attached.
			break;
		}
		
		var spr_scale = 1 + small_sprites;
		
		
		//var sna_arms_angle = sna_aim_dir_visual;
		//var sna_armsb_angle = lerp( 0, angle_difference(0, -sna_aim_dir_visual), _cur_firearm.head_ang_multiplier * 0.3);
		//var sna_head_angle = lerp( 0, angle_difference(0, -sna_aim_dir_visual), _cur_firearm.head_ang_multiplier);
		var sna_arms_angle = (spr_dir == 1) ? sna_aim_dir : sna_aim_dir - 180;			// Set the visual aim direction, for sprites. Has rotation offset for spr_dir.;
		var sna_armsb_angle = lerp( 0, angle_difference(0, -sna_arms_angle), _cur_firearm.head_ang_multiplier * 0.3);
		var sna_head_angle = lerp( 0, angle_difference(0, -sna_arms_angle), _cur_firearm.head_ang_multiplier);
		
		
		if (attack == AT_NTHROW) {												// If the Snake player is in the grab attack...
			shader_start();
			draw_sprite_ext(sprite_get("nthrow_lyr2"), image_index, x, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1);		// Draw Snake's top layer sprite above the grabbed player.
			shader_end();
		}
		
		else if (attack == AT_FSPECIAL) {
			
			// Reset arm angle when reloading.
			if (window == 5 || window == 6) {
				sna_arms_angle = 0;
			}
			
			shader_start();
			draw_sprite_ext(sprite_get("aim_head_fspecial_cqc"), current_sprite_set, x + sna_head_x * spr_dir, y + sna_head_y, spr_scale * spr_dir, spr_scale, sna_head_angle, c_white, 1 );	// Draw the head
			draw_sprite_ext(sprite_get("aim_armsb_fspecial_pistol_cqc"), current_sprite_set, x + sna_head_x * spr_dir, y + sna_head_y, spr_scale * spr_dir, spr_scale, sna_armsb_angle, c_white, 1 );	// Draw the head
			//draw_sprite_ext(sprite_get("aim_armsb_fspecial_pistol_cqc"), current_sprite_set, x * spr_dir, y, spr_scale * spr_dir, spr_scale, 0, c_white, 1 );	// Draw the back arm
            draw_sprite_ext(sprite_get("aim_armsf_fspecial_pistol_cqc"), image_index_arms, x + sna_arms_x * spr_dir, y + sna_arms_y, spr_scale * spr_dir, spr_scale, sna_arms_angle, c_white, 1 );	// Draw the front arm
			shader_end();
			
			// Draw the equipment
			draw_sprite_ext(sprite_get("w_" + str_w_name + str_w_suppressed + "_fspecial_cqc"), image_index_equipment, x + sna_arms_x * spr_dir, y + sna_arms_y, spr_scale * spr_dir, spr_scale, sna_arms_angle, c_white, 1 ); // Draw the equipment
		}
		
	}
}


//=========================================
// DRAW STATUS
//=========================================
/*
NOTE: We only draw other players' HUD if we're the "prime" Snake.
That way, HUDs won't overlap if there are multiple Snake players. 
*/

// Draw Target Reticle
/*with (other_player_id) {														// Get all snake players.
	var is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
	
	//if !(variable_instance_exists(self, "sna_prime")) continue;				// Skip non-snake players.
	if (other == sna_grabbed_playerid) continue;								// Skip grabbed players.
	
	// TODO: if (on the same team) continue;
	
	if (get_player_team( player ) == get_player_team( other.player )) continue;		// Don't draw the target reticle, if the player is on Snake's team.
	
	if (is_attacking && (attack == AT_FSPECIAL || attack == AT_DSPECIAL)) {		// If Snake is aiming a weapon...
		switch (attack) {
			case AT_FSPECIAL:
				var _other_x = other.x;
				var _other_y = other.y;
				var _reticle_idx = 0;
				var _relative_ang = point_direction(x, y, _other_x, _other_y);					// The angle between Snake and the opponent
				var _aim_ang_difference = abs(angle_difference(sna_aim_dir, _relative_ang));		// The angle difference between Snake's aiming angle, and the angle between Snake and the opponent
				var _distance = point_distance(x, y, _other_x, _other_y);						// The distance between the players
				
				if (_aim_ang_difference < 15 && _distance < dict_equipment[inv_firearm].crosshair_distance * 2) {	// If the opponent is targeted by Snake...
					_reticle_idx = 1;													// Set the reticle index to the "targeted" index.
					other.sna_ui_status_state = 1;										// Display the opponent's status.
					other.sna_ui_status_timer = 0;
				}
				
				//Draw the reticle
				draw_sprite_ext(sprite_get("ui_target_reticle"), _reticle_idx, other.x, other.y - other.char_height * 0.6, 2, 2, 0, c_white, 0.9);
			break;
			case AT_DSPECIAL:
				var _other_x = other.x;
				var _other_y = other.y;
				var _reticle_idx = 0;
				var _distance = point_distance(x, y, _other_x, _other_y);						// The distance between the players
				var _in_front = ((spr_dir == 1 && _other_x > x )|| (spr_dir == -1 && _other_x < x )); // Get if the opponent is in front of Snake.
				
				if (_in_front && _distance < 64) {	// If the opponent is targeted by Snake...
					_reticle_idx = 1;													// Set the reticle index to the "targeted" index.
					other.sna_ui_status_state = 1;										// Display the opponent's status.
					other.sna_ui_status_timer = 0;
				}
				
				//Draw the reticle
				draw_sprite_ext(sprite_get("ui_target_reticle"), _reticle_idx, other.x, other.y - other.char_height * 0.6, 2, 2, 0, c_white, 0.9);
			break;
		}
	}
}*/

// Draw Status
if (other_player_id.sna_prime) {												// If we're the "prime" Snake...
	
	// Draw Status
	switch(sna_ui_status_state){
	    
	    case 0: // Do not Display
	        lerp_visual_lifebars(0.2);                                              // Always update the visual life gauge bars.
	    break;
	    
	    case 1: // Display
	        draw_status_ui(x - 40, y - char_height - 28, 1);
	    break;
	    
	    case 2: // Fade Out
	        var _len = (sna_ui_status_states[2].length > 0) ? sna_ui_status_states[2].length : 1;   // Avoid dividing by 0.
	        var _alpha = lerp (1, 0, sna_ui_status_timer / _len );
	        
	        draw_status_ui(x - 40, y - char_height - 28, _alpha);
	    break;
	}
}



//=========================================
// DRAW VISION CONES
//=========================================
if (other_player_id.sna_prime && !variable_instance_exists(self, "sna_prime") ) {		// If the Snake player drawing the cones is the "Prime" Snake, and the opponent is NOT a Snake player...
	
	if (sna_sns_sght_can_see) {													// If the opponent can see...
		var _angle = sna_sns_sght_angle;
		var _eyeheight = (state == PS_CROUCH) ? sna_sns_sght_eye_height_crouch : sna_sns_sght_eye_height;
		
		//-------------------------------------
		// Set cone of vision colours
		//-------------------------------------
		// SNEAK / CAUTION
		var _cone_col = /*#*/$fbf80e;								// Blue - default
		if (sna_sns_sght_sees_snake) _cone_col = c_yellow;		// Yellow - sees Snake
		
		// EVASION / ALERT
		var _highest_alert_state = 0;
		with (oPlayer) {
			if ("sna_prime" not in self) continue;				// Skip non-Snake players
			if (sna_stealth_state > _highest_alert_state)
				_highest_alert_state = sna_stealth_state;		// Get the highest alert state that a player has.
		}
		//if (_highest_alert_state == 2) _cone_col = #ff4200;	// If in evasion, set the cone of vision to be orange.
		//else if (_highest_alert_state == 3) _cone_col = c_red;	// If in alert, set the cone of vision to be red.
		if (_highest_alert_state > 1) _cone_col = c_red;	// If in evasion, set the cone of vision to be red.
		
		
		//-------------------------------------
		// Draw the cone of vision
		//-------------------------------------
		if (_highest_alert_state < 3) {											// Only draw the cone of vision when NOT in the alert state.
			with (other_player_id) {
				draw_sprite_ext(sprite_get("sense_visioncone"), 0, other.x, other.y - _eyeheight, 2, 2, _angle, _cone_col, 0.4 );
			}
		}
		
		//draw_debug_text(x, y + 20, string(sna_sns_sght_angle));
		//draw_debug_text(x, y + 40, string(sna_sns_sght_angle_wish));
		
	}
}



//=========================================================
// FUNCTIONS
//=========================================================

//---------------------------------------------------------
// Draw Status UI
//---------------------------------------------------------
#define draw_status_ui(_x, _y, _alpha)
// Draw the UI elements.

lerp_visual_lifebars(0.2);

var _life_idx = floor(lerp(39, 0, sna_life_drawn / 100));
var _psyche_idx = floor(lerp(39, 0, sna_psyche_drawn / 100));

var _str_depleted = "";
if (sna_life_depleted) _str_depleted = "_depleted";

with (other_player_id) {
    draw_sprite_ext(sprite_get("ui_status_back"), 0, _x, _y, 2, 2, 0, c_white, _alpha);             				// Draw the base of the status bar
    draw_sprite_ext(sprite_get("ui_status_life" + _str_depleted), _life_idx, _x, _y, 2, 2, 0, c_white, _alpha);		// Draw LIFE gauge
    draw_sprite_ext(sprite_get("ui_status_psyche"), _psyche_idx, _x, _y, 2, 2, 0, c_white, _alpha); 				// Draw PSYCHE gauge
    draw_sprite_ext(sprite_get("ui_status_front"), 0, _x, _y, 2, 2, 0, c_white, _alpha);            				// Draw the top layer of the status bar
}

// Get the Display Name
var _disp_name = "";
if ("sna_prime" in self)																							// If the player is a Snake player...
	_disp_name = (current_sprite_set == 1) ? "PLISKIN" : "SNAKE";													// Get unique display names for Snake.
else																												// If the player is NOT a Snake player...
	_disp_name = string_upper(get_char_info(player, INFO_STR_NAME));												// Get the regular display name.
// Draw the Text
textDraw_custom(_x + 6, _y - 10, "fName", c_white, 1, 200, fa_left, 1, true, 0.5, _alpha, _disp_name);				// Draw the character name.


#define lerp_visual_lifebars(_lerpspeed)

sna_life_drawn = lerp(sna_life_drawn, sna_life, _lerpspeed);				// When the life bar is adjusted, gradually slide the bar to the desired point.
if (sna_life_drawn) < 0.5 sna_life_drawn = 0;                                   // Round it down.
sna_psyche_drawn = lerp(sna_psyche_drawn, sna_psyche, _lerpspeed);			// When the psyche bar is adjusted, gradually slide the bar to the desired point.
if (sna_psyche_drawn) < 0.5 sna_psyche_drawn = 0;                               // Round it down.



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


//---------------------------------------------------------
// Draw Text (Custom)
//---------------------------------------------------------
#define textDraw_custom(x1, y1, font, color, lineb, linew, align, scale, outline, outline_alpha, alpha, text)

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
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha * outline_alpha);
        }
    }
}

draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];

