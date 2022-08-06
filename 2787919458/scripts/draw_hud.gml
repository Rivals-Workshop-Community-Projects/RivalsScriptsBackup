// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;

if(get_gameplay_time() <= 120){
	if(!trigger_warning){
		draw_debug_text(temp_x, temp_y - 40, "Press Taunt to disable FX's.");
	}
	if(taunt_pressed && !trigger_warning){
        trigger_warning = true;
	}
}


//Speed Meter
if(get_gameplay_time() > 120){
    var char_x = temp_x;
    draw_sprite_ext(sprite_get("fests"),0,temp_x,temp_y-38,2,2,0,-1,1)
    //Don't mind this cursed shit.
    curspd = abs(hsp/10)
    if curspd_override{
        if(phone_attacking && attack == AT_DTILT){
        	if(!runeF){
            	curspd = 0.1;
        	}else{
        		curspd = dtilt_mash/10;
        	}
        }
    }
    draw_sprite_ext(sprite_get("speeds"),curspd,char_x+105,temp_y-36,2,2,0,-1,1)
    char_x += 24;
    curspd = abs(hsp)
    if curspd_override{
        if(phone_attacking && attack == AT_DTILT){
            curspd = dtilt_mash;
        }
    }
    draw_sprite_ext(sprite_get("speeds"),curspd,char_x+105,temp_y-36,2,2,0,-1,1)
    char_x += 24;
    
    draw_sprite_ext(sprite_get("bullet_hud"),0,temp_x+180,temp_y+6,-2,2,0, need_to_reload ? c_gray : -1,1);
}
if(killcam_timer > 0){
    killcam_timer--;
    draw_sprite_ext(sprite_get("killcam"),abs(killcam_timer),-60,0,2,2,0,-1,.5)
}
/*
if(get_gameplay_time() <= 120){
	if(!trigger_warning){
		draw_debug_text(temp_x-10, temp_y - 20, "Taunt to disable distractions");
	}
	if(taunt_pressed && !trigger_warning){
        trigger_warning = true;
        sound_play(sound_get("sad_airhorn"))
	}
}
*/
if(sanic_uspec_count != 0){
	draw_sprite_ext(sprite_get("hud_joint"),sanic_uspec_count-1,temp_x+180,temp_y,2,2,0,sanic_uspec_count==3?c_gray:-1,1)
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5;
user_event(14);

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