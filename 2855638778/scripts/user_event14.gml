//go and declare debug variable in init
if ("debug" in self) {

	var debug_displacer = 0;
	
	if (debug == 1 && soldier_debug == 1) {
		debug_displacer = 128;
	}
	
	//This code draws a custom sprite tinted to the exact color of the player's first color slot.
	var col_R = get_color_profile_slot_r( get_player_color(player), 0);
	var col_G = get_color_profile_slot_g( get_player_color(player), 0);
	var col_B = get_color_profile_slot_b( get_player_color(player), 0);

	var col_final = make_color_rgb(col_R, col_G, col_B);
	
	// the default colors for these two alts make the ammo and rage bar difficult to see
	if (get_player_color(player) == 6 || get_player_color(player) == 14) {
		col_final = make_color_rgb(120, 120, 120);
	}
	else if (get_player_color(player) == 10) {
		col_final = make_color_rgb(183, 59, 56);
	}
	
	// debug vars 
	if debug == 1 {
		draw_debug_text(temp_x,temp_y-debug_displacer-16,"Current state: " + get_state_name(state))
		draw_debug_text(temp_x,temp_y-debug_displacer-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
		draw_debug_text(temp_x,temp_y-debug_displacer-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
		draw_debug_text(temp_x,temp_y-debug_displacer-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp) + "    Free: " + string(free))
		//further y positions should go up in multiples of 16 from 64
	}


	// debug vars unique to soldier
	if soldier_debug == 1 {
		draw_debug_text(temp_x,temp_y-16,"Ammo: " + string(rockets_clip));
		draw_debug_text(temp_x,temp_y-32,"Buff Banner: " + string(buff_current) + "/" + string(buff_max));
		draw_debug_text(temp_x,temp_y-48,"Buff Timer: " + string(buff_cur_timer));
		draw_debug_text(temp_x,temp_y-64,"Parachute Active: " + string(para_active));
		draw_debug_text(temp_x,temp_y-80,"Blastjumping: " + string(blastjumping));
		draw_debug_text(temp_x,temp_y-96,"Strong Charge: " + string(strong_charge));
		draw_debug_text(temp_x,temp_y-112,"Fspec Timer: " + string(fspecial_blast_ground_timer));
	}
	
	if soldier_debug != 1 && debug != 1 {
		
	// main hud boxes
	draw_sprite_ext(hud_main, 0, temp_x+108, temp_y-40, 2, 2, 0, c_white, 1);
	draw_sprite_ext(hud_main, 1, temp_x+108, temp_y-40, 2, 2, 0, col_final, 1);
	
	// number that says how much rockets are in clip
	draw_sprite_ext(hud_rocket_numbers, rockets_clip, temp_x+180, temp_y-28, 2, 2, 0, c_white, 1);
	

	// buff rage meter the houses the bar
	draw_sprite_ext(hud_ragebar, 0, temp_x+118, temp_y-20, 2, 2, 0, c_white, 1);
	
	// buff rage bar
	draw_sprite_ext(hud_ragebar, 1, temp_x+118, temp_y-20, (buff_current/buff_max)*2, 2, 0, c_white, 1);
	
	// if buff is full, turn the bar red
	if (buff_current == buff_max) {
		draw_sprite_ext(hud_ragebar, 2, temp_x+118, temp_y-20, 2, 2, 0, c_white, 1);
	}
	
	// dspecial meter isn't actually full while deploying banner. it's ~80% incase you get hit
	// this hides that
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL) {
		draw_sprite_ext(hud_ragebar, 2, temp_x+118, temp_y-20, 2, 2, 0, c_white, 1);
	}

	// red meter that appears while buff is active, depleting over time
	// the earlier red meters dissapear
	if (buff_active) {
		draw_sprite_ext(hud_ragebar, 2, temp_x+118, temp_y-20, (buff_cur_timer/buff_timer)*2, 2, 0, c_white, 1);
		// flag icon
		draw_sprite_ext(hud_buff, 0, temp_x+28, temp_y-46, 2, 2, 0, c_white, 1);
		if (runeB) { // rune b acts similar to tf2 batallion's backup buff
			draw_sprite_ext(hud_buff, 1, temp_x+54, temp_y-46, 2, 2, 0, c_white, 1);
		}
		if (runeM) { // rune m acts similar to tf2 concheror's buff
			draw_sprite_ext(hud_buff, 2, temp_x+54, temp_y-46, 2, 2, 0, c_white, 1);
		}
	}
	
	
	// grayed out parachute icon if the move was used but isn't active
	if (move_cooldown[AT_USPECIAL] > 2) {
		draw_sprite_ext(hud_para, 0, temp_x-6, temp_y-48, 2, 2, 0, c_gray, 1);

	}
	
	// parachute icon if move is currently in use
	if (para_active) {
		draw_sprite_ext(hud_para, 0, temp_x-6, temp_y-48, 2, 2, 0, c_white, 1);
	}
		
	}
	
}

	
//abyss gui code
ab_hud_x = temp_x;
ab_hud_y = temp_y;
//this is for the outdated warning message
if ("depNotice" not in self) depNotice = 0;
if ("abyssEnabled" in self && abyssEnabled && (menuActive || timerActive)) abyssDraw();
#define abyssDraw 
/// abyssDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_drawArray" in self && ds_list_valid(abyss_drawArray))  {
	if (ds_list_size(abyss_drawArray) > 0) {
		for (var _i = 0; _i < ds_list_size(abyss_drawArray);_i++) {
			var _text = abyss_drawArray[| _i];
			if draw_get_halign() != _text[6] {
				draw_set_halign(_text[6]);
			}
			switch (_text[0]) {
				case 0:
					draw_debug_text(floor(_text[1]),floor(_text[2]),string(_text[3]));
					break;
				case 1:
					draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
					break;
				case 2:
					draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
					break;
				case 3:
					if draw_get_font() != 1 draw_set_font(1);
			  draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
					break;
				default:
				break;
			}
		}
	}
	//finished drawing, so clear the table for the next frame.
	ds_list_clear(abyss_drawArray);
}
//return draw_calls;
#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.
if draw_get_font() != argument[3] {
	draw_set_font(argument[3]);
}
draw_text_color(argument[0]+2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1],argument[2],argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,1);

	





