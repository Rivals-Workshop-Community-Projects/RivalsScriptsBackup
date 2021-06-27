if (attack_down && taunt_down && down_down){
var txt;
txt[0]="A curse that changes your past?";
txt[1]="There are no changes, only replacements.";
txt[2]="Do you remember being born?";
txt[3]="In the UK, it is currently moon.";
txt[4]="'Aether' gets me nostalgic about Aether Mod";
txt[5]="Astral Birth";
txt[6]="Do you feel the need for... optimization?";
txt[7]="FEED STUBS SO THAT THEY MAY GROW!";
txt[8]="May heaven grant you fortune.";
txt[9]="May molydeux grant you fortune.";
txt[10]="Dis is one half.";
txt[11]="Nürburgring 24h Endurance!";
txt[12]="L2vR2XR2[]R1^L2[]R1OXS";
txt[13]="This name's as real as you or I...";
txt[14]="Why would I be playing petscop in a car?";
txt[15]="Будущее прекрасно!";
txt[16]="Missing Number";
txt[17]="Creashaks Organzine!";
txt[18]="Passing through nature to eternity.";
txt[19]="care-dancing-sign";
txt[20]="Everything is a trick.";
txt[21]="Is there such a thing?";
txt[22]="Activity Level A";
txt[23]="Activity Level B";
txt[24]="Activity Level C";
txt[25]="The ghost room is a ship in a bottle.";
txt[26]="Some things you can't re-write.";
txt[27]="Nobody opened the door.";
txt[28]="The door did not open itself.";
txt[29]="The door, in fact, did not open at all.";
txt[30]="BECAUSE NIGHT IS LONGEST WHEN DAY DOES NOT EXIST";
txt[31]="WE ARE ALL CAUGHT IN HIS WEB";
txt[32]="AND THE WEB CONSUMES US ALL";
draw_debug_text( temp_x, temp_y - 20, string(txt[id % 33]));
}


if (variable_instance_exists(id,"phone_disable")){
	if (!phone_disable){
		if (phone_manual_init >= 1){
			user_event(11);
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
var x = argument[0], y = argument[1], text = argument[2], font = argument[3];
var color = argument_count > 4 ? argument[4] : c_white;
if draw_get_font() != font {
    draw_set_font(font);
}
draw_text_color(x+2,y,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x+2,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x+2,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y,text,color,color,color,color,1);