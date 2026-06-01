// post_draw.gml
// this script draws sprites IN FRONT the player character

//print(sin(get_gameplay_time() * 0.5))
var sin_thing = ((nspec_visual_charge_bump_tick mod 2 == 1)?-1:1) * 0.2;
// print(sin_thing)

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if (attack == AT_NSPECIAL){
		if (window == 2){
		
			// draw number
			draw_sprite_ext( sprite_get("nspecial_numbers"),
			sd_card_number,
			x + (spr_dir * 48),
			y - 80, 1, 1,
			0, c_white, 1 );
			
			var base_parenth_dist = 28;
			
			// draw pars
			draw_sprite_ext( sprite_get("nspecial_number_pars"),
			sd_card_number,
			x + (spr_dir * 48) - base_parenth_dist - nspec_visual_charge_bump_tick,
			y - 80, 1, 1,
			0, c_white, 1 );
			
			// draw pars
			draw_sprite_ext( sprite_get("nspecial_number_pars"),
			sd_card_number,
			x + (spr_dir * 48) + base_parenth_dist + nspec_visual_charge_bump_tick,
			y - 80, -1, 1,
			0, c_white, 1 );
			
			/*
			// draw sprite
			draw_sprite_ext( sprite_get("nspecial_sd_card"),
			0,
			x + (spr_dir * ( 48 + (nspec_visual_charge_bump_tick * sin_thing) )),
			y - 80 - sin(get_gameplay_time() * 0.5), 1, 1,
			0, c_white, 1 );
			
			// draw number
			draw_debug_text(x + (44 * spr_dir) - ((spr_dir==-1)?8:0),
			y - 80,
			string(sd_card_number));
			*/
		}
	}
	
}

if (holding_sd_card && (attack != AT_NSPECIAL || (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR))){
	// draw sprite
	draw_sprite_ext( sprite_get("nspecial_number_proj"),
	held_sd_card_num,
	x - (34*spr_dir),
	y - 76 - 10*sin(get_gameplay_time() * 0.1), 1, 1,
	0, c_white, 1 );
}

// draw the sd card so it looks like the calc is "throwing" it lol
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL){
	if (window <= 5 && window >= 3 && image_index >= 7){
		
		if (held_sd_card_num == -1){
			var which_card_img_index = sd_card_number;
		} else {
			var which_card_img_index = held_sd_card_num;
		}
		
		var should_show_card = true;
		switch(image_index){
		
			// basic nspec throw
			case 7:
				var sd_card_held_x = x + (-10 * spr_dir);
				var sd_card_held_y = y - 100;
				break;
			case 8:
				var sd_card_held_x = x + (-50 * spr_dir);
				var sd_card_held_y = y - 86;
				break;
				
			// forward throw
			case 14:
				var sd_card_held_x = x + (-38 * spr_dir);
				var sd_card_held_y = y - 60;
				break;
			case 15:
				var sd_card_held_x = x + (-52 * spr_dir);
				var sd_card_held_y = y - 42;
				break;
				
			// up throw
			case 21:
				var sd_card_held_x = x + (-35 * spr_dir);
				var sd_card_held_y = y - 10;
				break;
			case 22:
				var sd_card_held_x = x + (-40 * spr_dir);
				var sd_card_held_y = y - 48;
				break;
				
			// down throw
			case 28:
				var sd_card_held_x = x + (-2 * spr_dir);
				var sd_card_held_y = y - 110;
				break;
			case 29:
				var sd_card_held_x = x + (-22 * spr_dir);
				var sd_card_held_y = y - 92;
				break;
			
		
			// oops
			default:
				var sd_card_held_x = x + (0 * spr_dir);
				var sd_card_held_y = y + 0;
				should_show_card = false;
				break;
		}
		
		// draw sprite
		if (should_show_card){
			draw_sprite_ext( sprite_get("nspecial_number_proj"),
			which_card_img_index,
			sd_card_held_x,
			sd_card_held_y,
			1, 1,
			0, c_white, 1 );
		}
	}
}


if (get_match_setting(SET_HITBOX_VIS) && attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window == 2 && !hitpause){

	var grabHB_xPos = get_hitbox_value( AT_USPECIAL, image_index - 5, HG_HITBOX_X );
	var grabHB_yPos = get_hitbox_value( AT_USPECIAL, image_index - 5, HG_HITBOX_Y );
	var grabhb_x_wg_help_offset = 28;
	var rect_col = c_blue;

	// x + (grabhb_x_wg_help_offset + grabHB_xPos * spr_dir), y + grabHB_yPos

	draw_set_alpha(0.5);
	draw_rectangle_colour(
	x + (uspec_grab_radius_else + grabHB_xPos * spr_dir),	// x left
	y + grabHB_yPos - uspec_grab_radius_else,		// y top
	x + (-uspec_grab_radius_else + grabHB_xPos * spr_dir),	// x right
	y + grabHB_yPos + uspec_grab_radius_bottom,		// y bottom
	rect_col,
	rect_col,
	rect_col,
	rect_col,
	false);
	draw_set_alpha(1);
}