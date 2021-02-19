//draw hud

if !("text_inited" in self) exit;



shader_start();



//bike bike_cooldown

if (bike_cooldown){
    //draw_debug_text(temp_x, temp_y, "bruh moment");
    
    var bike_cooldown_x_pos = temp_x+104;
    var bike_cooldown_y_pos = temp_y-6;
    var bike_cooldown_frame = (bike_cooldown < bike_cooldown_max - 4) ? 1 : 0;
    var rectangle_color = c_black;
    var just_started = bike_cooldown == clamp(bike_cooldown, bike_cooldown_max - 30, bike_cooldown_max - 24) || bike_cooldown == clamp(bike_cooldown, bike_cooldown_max - 18, bike_cooldown_max - 12);
    if (bike_cooldown < bike_cooldown_min){
        bike_cooldown_frame = 2;
        rectangle_color = c_white;
    }
    
    var width_mul = ((bike_cooldown < bike_cooldown_max - 20) ? 1 : 0.1 * ease_bounceOut(3, 10, bike_cooldown_max - bike_cooldown, 20)) *
        ((bike_cooldown < bike_cooldown_min) ? 0.1 * ease_cubeOut(2, 20, bike_cooldown_min - bike_cooldown, bike_cooldown_min) : 1);
    var height_mul = (bike_cooldown < bike_cooldown_min) ? 0.01 * ease_cubeOut(120, 1, bike_cooldown_min - bike_cooldown, bike_cooldown_min) : 1;
    
    var bike_cooldown_width = 100 * width_mul; //doubled
    var bike_cooldown_height = 4 * height_mul; //doubled
    var bike_cooldown_y_offset = 0;
    var bike_cooldown_bar_empty = clamp(floor(bike_cooldown_width * ((bike_cooldown - bike_cooldown_min) / (bike_cooldown_max - bike_cooldown_min))) * 2, 0, bike_cooldown_width * 2 - 4);
    
    draw_sprite_ext(spr_hud_bike_cooldown, (bike_cooldown <= bike_cooldown_min || just_started), bike_cooldown_x_pos-bike_cooldown_width+9+bike_cooldown_x_offset, bike_cooldown_y_pos, width_mul, height_mul, 0, c_white, 1);
    //draw_sprite_part_ext(spr_hud_bike_cooldown, 0, 10, 0, 40, 40, bike_cooldown_x_pos-bike_cooldown_width+10, bike_cooldown_y_pos-84-15*height_mul, width_mul, height_mul, c_white, 1);
    
    draw_rectangle_color(bike_cooldown_x_pos-bike_cooldown_width, bike_cooldown_y_pos-bike_cooldown_y_offset-bike_cooldown_height, bike_cooldown_x_pos+bike_cooldown_width-1,
    bike_cooldown_y_pos-bike_cooldown_y_offset+bike_cooldown_height-1, rectangle_color, rectangle_color, rectangle_color, rectangle_color, false);
    
    rectangle_color = make_color_rgb(60, 60, 60);
    
    draw_rectangle_color(bike_cooldown_x_pos-bike_cooldown_width+2, bike_cooldown_y_pos-bike_cooldown_y_offset-bike_cooldown_height+2, bike_cooldown_x_pos+bike_cooldown_width-3,
    bike_cooldown_y_pos-bike_cooldown_y_offset+bike_cooldown_height-3, rectangle_color, rectangle_color, rectangle_color, rectangle_color, false);
    
    rectangle_color = c_white;
    
    draw_rectangle_color(bike_cooldown_x_pos-bike_cooldown_width+2, bike_cooldown_y_pos-bike_cooldown_y_offset-bike_cooldown_height+2, bike_cooldown_x_pos+bike_cooldown_width-3-bike_cooldown_bar_empty,
    bike_cooldown_y_pos-bike_cooldown_y_offset+bike_cooldown_height-3, rectangle_color, rectangle_color, rectangle_color, rectangle_color, false);
    
    
    
    //ruler markings
    
    if (bike_cooldown > bike_cooldown_min){
        var ruler_offset = bike_cooldown_width / 5;
        
        for (i = 1; i < 10; i++){
            var ruler_height = (i % 2) ? 2 : 4;
            
            var rect_x = bike_cooldown_x_pos - bike_cooldown_width + ruler_offset * i;
            var rect_y = bike_cooldown_y_pos - 3;
            var rect_w = 1 + rect_x;
            var rect_h = ruler_height + rect_y;
            var rect_c = c_black;
            
            draw_rectangle_color(rect_x, rect_y, rect_w, rect_h, rect_c, rect_c, rect_c, rect_c, false)
        }
    }
}



//bike hud

if ("hud_state" in self && !hide_hud && hud_state){
    if (hud_frame == 0 || hud_frame == 6){
        draw_sprite(handlebars_sprite, hud_frame, temp_x-4, temp_y-70+whole_bike_hud_offset);
    }
    
    draw_sprite(hud_sprite, hud_frame, temp_x-4, temp_y-70+whole_bike_hud_offset);
    
    if !(hud_frame == 0 || hud_frame == 6){
        
        var bobble_x = 164;
        var bobble_y = -30+whole_bike_hud_offset;
        
        if (bobblebody_sprite != spr_hud_bobblebody){
            shader_end();
        }
        draw_sprite(bobblebody_sprite, bobblehead_frame, temp_x + bobble_x, temp_y + bobble_y + bobblehead_body_offset);
        
        if (bobblebody_sprite != spr_hud_bobblebody){
            shader_start();
        }
        
        
        if (bobblehead_sprite != spr_hud_bobblehead){
            shader_end();
        }
        draw_sprite(bobblehead_sprite, bobblehead_frame, temp_x + bobble_x - 8, temp_y + bobble_y - 20 + bobblehead_head_offset);
        
        if (bobblehead_sprite != spr_hud_bobblehead){
            shader_start();
        }
        
        draw_sprite(handlebars_sprite, hud_frame, temp_x-4, temp_y-70+whole_bike_hud_offset);
    }
    
    shader_end();
    
    if (hud_frame == 0 || hud_frame == 6){
        
        if (bobblehead_sprite != spr_hud_bobblehead){
            shader_end();
        }
        draw_sprite_part_ext(bobblehead_sprite, bobblehead_frame, 8, 16, 30, 2, temp_x + 164, temp_y - 30+whole_bike_hud_offset, 1, 15, c_white, 1);
        
        if (bobblehead_sprite != spr_hud_bobblehead){
            shader_start();
        }
    }
    
    shader_start();
    
    if (hud_frame == clamp(hud_frame, 1, 5)){
        //Speedometer
        draw_sprite_ext(spr_speedometer, 0, temp_x+27, temp_y-20+speedometer_offset+whole_bike_hud_offset, 1, 1, -speedometer_angle, c_white, 1);
    }
}



//taunt hint

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_TAUNT && !practice){
	var text = "";
	var should_text = false;
	
	if (taunt_held_time > 50){
		text = codec_valid ? "Keep holding..." : (tourney_safe ? "Codecs Disabled" : "No Enemy Codec");
		should_text = true;
	}
	
	
	
	if (should_text && window_timer % ((330 - taunt_held_time) / 20) >= (330 - taunt_held_time) / 40){
		draw_debug_text(temp_x+60, temp_y - 20, text);
	}
}



//godmode and taunt reminders

if (((practice && !hide_hud) || god_mode) && frame_data_guide_state != 2){
	var text = "";
	var offset_x = -120;
	switch(god_mode){
		case 0:
			if (practice && !hide_hud){
				text = "Taunt!";
				offset_x = 0;
			}
			break;
		case 1:
			text = "God Mode: Cooldown";
			break;
		case 2:
			text = "God Mode: Runes";
			break;
		case 3:
			text = "God Mode: Oh no";
			break;
	}
	draw_debug_text(temp_x+160+offset_x, round(temp_y - 10 + (textbox_scale * 20 * (textbox_state != 0)) + (200 - frame_data_menu_offset) * 0.3), text);
}



//Framedata

if frame_data_guide_state{
    var side = 188; //left of graphic
    var top = 348; //top of graphic
    draw_sprite(spr_hud_framedata, frame_data_guide_frame, side, top);
    var xoffset = 38; //offset for all text
    var yoffset = 66; //offset for all text
    var lineheight = 18; //amt to drop per line
    var fineprint = 430;
    
    var fineprintoffset = (frame_data_guide_state == 2) ? 0 : frame_data_menu_offset;
    
    draw_debug_text(xoffset / 2-fineprintoffset, fineprint + lineheight * 0, ((frame_data_menu_state) ? "Taunt, Attack, or Shield:" : "Taunt:"));
    draw_debug_text(xoffset / 2-fineprintoffset, fineprint + lineheight * 1, "   Toggle Full View");
    draw_debug_text(xoffset / 2-fineprintoffset, fineprint + lineheight * 2, ((frame_data_menu_state) ? "Special:" : "Taunt, then Special:"));
    draw_debug_text(xoffset / 2-fineprintoffset, fineprint + lineheight * 3, "   Quit Move Guide");
    
    if (frame_data_guide_state == 2){
        
        for (col = 0; col < 4; col++){
            var colside = 0; //offset dependent on column
            switch(col){
                case 1:
                    colside = 130;
                    break;
                case 2:
                    colside = 270;
                    break;
                case 3:
                    colside = 400;
                    break;
            }
            for (line = 0; line < 4; line++){
                draw_debug_text(side + xoffset + colside, top + yoffset + lineheight * line, frame_data_guide_text[col,line]);
            }
        }
    }
}



if frame_data_menu_state{
    var side = 10-frame_data_menu_offset; //left of list
    var top = 10; //top of list
    
    draw_sprite_ext(spr_hud_movelist, 0, side, top, 1, 1, 0, c_white, hud_alpha);
    var xoffset = 10; //offset for all text
    var yoffset = 10; //offset for all text
    var lineheight = 18; //amt to drop per line
    
    //draw_debug_text(side + xoffset, top + yoffset, "- Move List -");
    textDraw(side+xoffset+4, top+yoffset, "fName", c_white, 0, 1000, 1, false, 1, "- Move List -");
    
    yoffset += 24;
    
    for (line = 0; line <= num_of_attacks; line++){ //list of moves
        if (frame_data_atk_name == line){
            wiggle = 2 * sin((frame_data_menu_timer) * 0.1) + 14;
            //draw_debug_text(round(side + xoffset - 10 + wiggle), top + yoffset + lineheight * line, ">");
            textDraw(round(side + xoffset - 10 + wiggle), top + yoffset + lineheight * line, "fName", c_white, 0, 1000, 1, false, 1, ">");
        }
        else{
            wiggle = 0;
        }
        //draw_debug_text(round(side + xoffset + wiggle), top + yoffset + lineheight * line, frame_data_atk_label[line]);
        textDraw(round(side + xoffset + wiggle), top + yoffset + lineheight * line, "fName", c_white, 0, 1000, 1, false, 1, frame_data_atk_label[line]);
    }
    
    
    
    //big thing
    
    side = 188+frame_data_menu_offset*4; //left of box
    var mid = side + 293; //center of box
    top = 50; //top of box
    
    draw_sprite_ext(spr_hud_movetips, 0, side, top, 1, 1, 0, c_white, hud_alpha);
    
    var width = textDraw(side+20, top+16, "medFont", c_white, 20, 1000, 2, false, 1, frame_data_atk_label[frame_data_atk_name]) * 2;
    //rectDraw(side+14, top+56, side+22+width, top+62, c_black);
    rectDraw(side+16, top+58, side+20+width, top+60, c_white);
    textDraw(side+19+width, top+43, "fName", c_white, 10, 1000, 1, false, 1, frame_data_guide_move_alias);
    
    var speaker_height = top + 66;
    
    shader_end();
    
    rectDraw(side+8, speaker_height, side+43, speaker_height+35, c_black);
    draw_sprite_part(spr_hud_char[0], 0, 20, 16, 32, 32, side+10, speaker_height+2);
    textDraw(side+48, speaker_height+11, "roaMBLFont", c_white, 10, 1000, 1, false, 1, "Mechanics");
    
    rectDraw(mid+8, speaker_height, mid+43, speaker_height+35, c_black);
    draw_sprite_part(spr_hud_char[1], 0, 20, 16, 32, 32, mid+10, speaker_height+2);
    textDraw(mid+48, speaker_height+11, "roaMBLFont", c_white, 10, 1000, 1, false, 1, "Tips");
    
    shader_start();
    
    var para_width = 230;
    
    textDraw(side+48, speaker_height + 43, "fName", c_white, 16, para_width, 1, false, 1, frame_data_guide_blurb[frame_data_atk_name, 0]);
    textDraw(mid+48, speaker_height + 43, "fName", c_white, 16, para_width, 1, false, 1, frame_data_guide_blurb[frame_data_atk_name, 1]);
    
    wiggle = 2 * sin((get_gameplay_time()) * 0.1) * 2;
    if (frame_data_atk_index[frame_data_atk_name] == AT_NSPECIAL){
        draw_sprite(spr_ball_charge_vfx[clamp(ball_charge, 1, 8)], 1, side + 500 + 40, round(top + 100 + wiggle - 49));
    }
    draw_sprite(frame_data_guide_char_sprite, frame_data_guide_char_frame, side + 500, round(top + 100 + wiggle));
    if (frame_data_atk_index[frame_data_atk_name] == AT_NSPECIAL){
        draw_sprite(spr_ball_charge, clamp(ball_charge - 1, 0, 7), side + 500 + 40, round(top + 100 + wiggle - 49));
        draw_debug_text(round(side+500+40-12), round(round(top + 100 + wiggle - 49)-14), string(clamp(ball_charge, 1, 8)))
    }
    
}



//text box

if textbox_state{
    var textbox_x_pos = temp_x+104;
    var textbox_y_pos = temp_y-50;
    var textbox_width = 96; //half of it.
    var textbox_height = 40; //half of it.
    
    draw_sprite_ext(spr_hud_textbox, 0, textbox_x_pos, textbox_y_pos, textbox_scale, textbox_scale, 0, c_black, hud_alpha);
    draw_set_halign(fa_left);
        
    draw_sprite_ext(spr_hud_coverup, 0, temp_x + 26, temp_y + 6, 1, 1, 0, c_white, textbox_scale);
    
    textDraw(temp_x + 82 - (1 - textbox_scale) * 30, temp_y + 29, "fName", c_white, 16, 1000, 1, false, textbox_scale, hud_speaker_name[text_speakers[text_file, text_page]]);
    
    draw_set_halign(fa_right);
    textDraw(temp_x + 205, temp_y + 9, "fName", c_white, 16, 1000, 1, false, textbox_scale, "Pg. " + string(text_page + 1) + "/" + string((text_gimmicks[text_file, text_page] == 8) ? 300 : text_page_count[text_file] + 1));
    
    var face_offset = (mouth_flap && text_speakers[text_file, text_page] != 2) * 2;
    
    if (text_speakers[text_file, text_page] != 3) shader_end();
    
    var liz_wiggle = (text_gimmicks[text_file, text_page] == 11 && textbox_timer mod 6 > 2);
    
    var spr_width = 1;
    var skinny_timer = 0;
    if liz_wiggle spr_width = -1;
    if (text_gimmicks[text_file, text_page] == 17){
    	spr_width = ease_quartInOut(3, 1, clamp(textbox_timer, 0, 30), 30) / 3;
    	skinny_timer = ease_quartInOut(0, 24, clamp(textbox_timer, 0, 30), 30);
    }
    
    draw_sprite_part_ext(spr_hud_char[text_speakers[text_file, text_page]], mouth_flap + 2 * text_talk_exp[text_file, text_page], 0, 0, 100, 48 + face_offset, temp_x + 20 + 66 * liz_wiggle + skinny_timer, temp_y - 8 - face_offset, spr_width, 1, c_white, textbox_scale);
    
    if (text_speakers[text_file, text_page] != 3) shader_start();
    
    draw_set_halign(fa_left);
    
    if (textbox_state == 2){
        textDraw(textbox_x_pos - textbox_width, textbox_y_pos - textbox_height, "fName", c_white, 16, textbox_width * 2, 1, false, 1, final_text/* + ((text_char <= string_length(text_contents[text_file, text_page]) || textbox_timer mod 60 < 30) ? " |" : "")*/);
        if (text_gimmicks[text_file, text_page] == 16) for (i = 1; i < 5; i++){
        	textDraw(textbox_x_pos - textbox_width + 220 * i, textbox_y_pos - textbox_height - 540 * i, "fName", c_white, 16, textbox_width * 2, 1, false, 1, final_text);
        }
        if post_text_timer{
			var cursor_size = ease_quartOut(1, 10, clamp(post_text_timer, 0, 6), 6) / 10;
			var cursor_rot = 10 * sin((post_text_timer) * 0.17);
			if practice draw_sprite_ext(spr_hud_cursor, 0, textbox_x_pos + textbox_width - 4, textbox_y_pos + textbox_height - 4, cursor_size, cursor_size, cursor_rot, c_white, 1);
		}
            
        if !codec_forced{
        	if (!text_page && practice){
	            draw_debug_text(18, 430 + 18 * -2, "Taunt:");
	            draw_debug_text(18, 430 + 18 * -1, "   Next Page");
	            draw_debug_text(18, 430 + 18 * 0, "Up + Taunt:");
	            draw_debug_text(18, 430 + 18 * 1, "   Back 1 Page");
	            draw_debug_text(18, 430 + 18 * 2, "Down + Taunt:");
	            draw_debug_text(18, 430 + 18 * 3, "   Quit");
	            draw_debug_text(18, 430 + 18 * 4, "Side + Taunt:");
	            draw_debug_text(18, 430 + 18 * 5, "   Forward / Back 5 Pages");
	        }
	        else if !practice{
	            draw_debug_text(18, 430 + 18 * 4, "Taunt:");
	            draw_debug_text(18, 430 + 18 * 5, "   Quit Codec");
	        }
        }
    }
}



//debug

if testing{
    draw_set_halign(fa_left);
	
	debugGet();
	
	var side = 820; //left of list
    var top = 10; //top of list
    
    draw_sprite_ext(spr_hud_movelist, 0, side, top, 1, 1, 0, c_white, hud_alpha);
    
    var xoffset = 10; //offset for all text
    var column = 76;
    var yoffset = 10; //offset for all text
    var lineheight = 18; //amt to drop per line
    
    //draw_debug_text(side + xoffset, top + yoffset, "- Move List -");
    textDraw(side+xoffset+4, top+yoffset, "fName", c_white, 0, 1000, 1, false, 1, "- Data List -");
    
    yoffset += 24;
    
    for (line = 0; line <= num_of_debug; line++){ //list of moves
        textDraw(round(side + xoffset), top + yoffset + lineheight * line, "fName", c_white, 0, 1000, 1, false, 1, debug_label[line]);
        textDraw(round(side + xoffset + column), top + yoffset + lineheight * line, "fName", c_white, 0, 1000, 1, false, 1, string(debug_value[line]));
    }
    
    if experimenting draw_debug_text(18, 430+18*5, "Experimental Changes Active")
}



shader_end();



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



#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);



#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);



#define debugGet

var i = 0;

debug_label[i] = "Free";
debug_value[i] = free;
i++;
debug_label[i] = "HSP";
debug_value[i] = hsp;
i++;
debug_label[i] = "VSP";
debug_value[i] = vsp;
i++;
debug_label[i] = "Hitpause";
debug_value[i] = hitstop;
i++;
debug_label[i] = "State";
debug_value[i] = state;
i++;
debug_label[i] = "State Ti";
debug_value[i] = state_timer;
i++;
debug_label[i] = "Attack";
debug_value[i] = attack;
i++;
debug_label[i] = "Window";
debug_value[i] = window;
i++;
debug_label[i] = "Window Ti";
debug_value[i] = window_timer;
i++;
debug_label[i] = "Bike";
debug_value[i] = bike;
i++;
debug_label[i] = "Bike CD";
debug_value[i] = bike_cooldown;
i++;
debug_label[i] = "Ball Ch";
debug_value[i] = ball_charge;
i++;
debug_label[i] = "Ball CD";
debug_value[i] = ball_cooldown;
i++;
debug_label[i] = "FSpec Use";
debug_value[i] = fspecials_used;
i++;
debug_label[i] = "USpec Use";
debug_value[i] = uspecials_used;
i++;
debug_label[i] = "ADash Use";
debug_value[i] = airdashes_used;
i++;
debug_label[i] = "DSpec Ch";
debug_value[i] = dspecial_charge;
i++;
debug_label[i] = "Text File";
debug_value[i] = text_file;
i++;
debug_label[i] = "Text Time";
debug_value[i] = textbox_timer;
num_of_debug = i;






