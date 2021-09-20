// draw hud

if ("literally_sliced_in_half" in self) { // no more weird error message :D

	if (literally_sliced_in_half == false){ // variable is part of abyss hime support

	// test variable debug text (you never know when you need to display a value)
	//draw_debug_text(temp_x+0,temp_y-30,"up is down? = "+string(up_down));
	//draw_debug_text(temp_x+0,temp_y-30,"HSP: "+string(hsp));
	//draw_debug_text(temp_x+0,temp_y-30,"Fast Fall?: "+string(can_fast_fall));
	//draw_debug_text(temp_x+0,temp_y-60,"SDM: "+string(steve_death_message));
	//draw_debug_text(temp_x+0,temp_y-60,"Window: "+string(window));
	//draw_debug_text(temp_x+0,temp_y-44,"Window Timer: "+string(window_timer));
	//draw_debug_text(temp_x+0,temp_y-44,"Ammo: "+string(ammo));
	//draw_debug_text(temp_x+0,temp_y-44,"Fspec Cooldown: "+string(move_cooldown[AT_FSPECIAL]));
	//draw_debug_text(temp_x+0,temp_y-44,"Hitstun: "+string(hitstun));
	//draw_debug_text(temp_x+0,temp_y-30,"State: "+string(state));
	//draw_debug_text(temp_x+0,temp_y-30,"Stage: "+string(get_stage_data( SD_WIDTH )));


		// boot icon. grayed out if cooldown is active
		if (move_cooldown[AT_DSPECIAL] == 0) {
			draw_sprite_ext(dspec_hudicon, 0, temp_x+190+11, temp_y-18+11, 1, 1, 0, c_white, 1);	
		}
		else if (move_cooldown[AT_DSPECIAL] > 0) {
			draw_sprite_ext(dspec_hudicon, 0, temp_x+190+11, temp_y-18+11, 1, 1, 0, c_gray, 1);		
		}

		// smg bomb icon.
		if (runeN) {

			if (move_cooldown[AT_DSTRONG_2] == 0) {
				if (bomb_ammo == 0) {
					draw_sprite_ext(bomb_hudicon, 0, temp_x+210, temp_y-28, 1, 1, 90, c_gray, 1);	
				}
				else {
					draw_sprite_ext(bomb_hudicon, 0, temp_x+210, temp_y-28, 1, 1, 90, c_white, 1);	
				}
			}
			else if (move_cooldown[AT_DSTRONG_2] > 0) {
				draw_sprite_ext(bomb_hudicon, 0, temp_x+210, temp_y-28, 1, 1, 90, c_gray, 1);	
			}
			
			if (!runeD) {
				draw_debug_text(temp_x+180,temp_y-4,string(bomb_ammo)); // grenade ammo count
			}
		}

		if (gimmick_activated == true) {
			
			
			 // hype meter bar bg (transparent black)
			draw_sprite_ext(sprite_get("spmeter"), 0, temp_x+2, temp_y-20, 2, 2, 0, c_white, 1);

			 // hype meter bar (purple)
			draw_sprite_ext(sprite_get("spmeter_bar"), 0, temp_x+4, temp_y-14, 2 * (hype / hype_max), 2, 0, c_white, 1);
			
			// hype meter while it's at full (hot pink)
			if (hype >= hype_max) {
				draw_sprite_ext(sprite_get("spmeter_bar_ready"), 0, temp_x+4, temp_y-14, 2 * (hype / hype_max), 2, 0, c_white, 1);		
			}
			
			// hype meter while it's active and draining (white)
			if (hype_active == true) {
				draw_sprite_ext(sprite_get("spmeter_bar_draining"), 0, temp_x+4, temp_y-14, 2 * (hype / hype_max), 2, 0, c_white, 1);
			}
		}
		
		
		//go and declare debug variable in init
		if debug == 1 {
		draw_debug_text(temp_x,temp_y-16,"Current state: " + get_state_name(state))
		draw_debug_text(temp_x,temp_y-32,"Window timer: " + string(window_timer) + "    State timer: " + string(state_timer))
		draw_debug_text(temp_x,temp_y-48,"Window: " + string(window) + "   Joystick: " + string(joy_dir))
		draw_debug_text(temp_x,temp_y-64,"HSP: " + string(hsp) + "    VSP: " + string(vsp) + "    Free: " + string(free))
		//further y positions should go up in multiples of 16 from 64
		}
		
		// munophone touch support
			muno_event_type = 5;
			user_event(14);
		
	}
}


// WORKSHOP COMPATIBILITY BEGINS HERE

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


