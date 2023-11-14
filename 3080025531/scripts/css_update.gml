var alt_cur = get_player_color("alt_fix" in self? alt_fix: player)

init_shader();

if(!instance_exists(cursor_id)) exit;
//Muno Button Code start
var temp_xl = 0;
var temp_yl = 0;
// Online Player
if (player == 0) {
    temp_xl = 178;
    temp_yl = 34;
}
else {
    // CPU
    if (get_player_hud_color(player) == 8421504) {
        temp_xl = 178;
        temp_yl = 34;
    }
    // Local Player
    else {
        temp_xl = 178;
        temp_yl = 34;
    }
}

var temp_bw = 30
var temp_bh = 26
var temp_xl1 = x+temp_xl
var temp_xl2 = temp_xl1+temp_bw
var temp_yl1 = y+temp_yl
var temp_yl2 = temp_yl1+temp_bh

draw_set_halign(fa_left);

if get_synced_var("alt_fix" in self? alt_fix: player) > 2 {
	set_synced_var( "alt_fix" in self? alt_fix: player, 0)
}
if("cssframes" not in self){cssframes = 0;}
if("voiced" not in self){voiced = get_synced_var("alt_fix" in self? alt_fix: player);}
if("voicebutton" not in self){voicebutton = voiced * 3;}
if("voicebuttoncurrent" not in self){voicebuttoncurrent =  voiced * 3;}
if voicebutton == 2 || voicebutton == 5 {
	if cssframes == 0{
	sound_stop(sound_get("sfx_cssvoiceselect"));
		if voicebutton == 2{
			sound_play(sound_get("sfx_cssvoiceselect"));
			voiced = 1;
			voicebuttoncurrent = voicebutton;
		}
		if voicebutton == 5{
			voiced = 0;
			voicebuttoncurrent = voicebutton;
		}

	}
	cssframes++;
	if cssframes == 5{
		cssframes = 0;
		voicebutton += 1;
		if voicebutton > 5 {
			voicebutton -= 6;
		}
		voicebuttoncurrent = voicebutton;
	}
}

var x_temp = get_instance_x(cursor_id);
var y_temp = get_instance_y(cursor_id);
if (x_temp>temp_xl1 && x_temp<temp_xl2 && y_temp>temp_yl1 && y_temp<temp_yl2){ 	
	if voicebutton == voicebuttoncurrent {
		if voicebutton == 0 || voicebutton == 3 {
			voicebutton += 1;
		}
	}
}else{
	if voicebutton == 1 || voicebutton == 4 {
		voicebutton -= 1;
	}
	voicebuttoncurrent = voicebutton;
}
if voicebutton == 1 || voicebutton == 4 {
	if menu_a_pressed{
		voicebutton += 1;
		voicebuttoncurrent = voicebutton;
	}	
}
//Toma Code end
 
 
 
//--- ---
// altered version of muno's functions. if you have other css codes, this part needs to be at the bottom of the code.
//--- ---
 
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 
 
#define rectDraw(x1, y1, x2, y2, color, out_color, alpha)
 
draw_set_alpha(argument[6]);
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[5], argument[5], argument[5], argument[5], false);
draw_set_alpha(argument[6]*1.5);
draw_rectangle_color(argument[0]+2, argument[1]+2, argument[2]-2, argument[3]-2, argument[4], argument[4], argument[4], argument[4], false);
draw_set_alpha(1);