//drawhud

// SAI
var hime = "1905208125";
var zetta = "1913869515";
shader_start();
if "introtimer" in self && (introtimer > 0) {
    draw_sprite(sprite_get("interaction"), 0, temp_x - 20, temp_y - 170);
    if (state_cat == SC_HITSTUN && introtimer < 200) {
        if (introtimer == 199) {
            //spawn_hit_fx( temp_x + 200, temp_y + 60, SC); // special effect
            //sound_play(sound_get("counterhit")); // special sound
            //sound_play(sound_get("RI")); // special sound
        }
        draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 180);
    }
  
    if (state_cat != SC_HITSTUN) {
       draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 220);
    }

    // Zetta
    if (hit_player_obj.url == zetta) {
        // Reply position
        if (state_cat == SC_HITSTUN && introtimer < 200) {
            draw_debug_text(temp_x + 6,temp_y - 28, "Are you the real Zetta? Or");
            draw_debug_text(temp_x + 6,temp_y - 12, "just another one of her clones?");
        }
        // Initiate postion    
        if (state_cat != SC_HITSTUN) {
            draw_debug_text(temp_x + 10,temp_y - 68, "I don't want to fight you...");
            draw_debug_text(temp_x + 46,temp_y - 52, "But I know you won't");
			draw_debug_text(temp_x + 46,temp_y - 36, "let me hold back.");
        }
    }
    
    // Hime
    if (hit_player_obj.url == hime) {
        // Reply position
        if (state_cat == SC_HITSTUN && introtimer < 200) {
            draw_debug_text(temp_x + 46,temp_y - 28, "That's what I was going");
            draw_debug_text(temp_x + 46,temp_y - 12, "to ask you...");
        }
        // Initiate position
        if (state_cat != SC_HITSTUN) {
            draw_debug_text(temp_x + 44,temp_y - 68, "Did you follow me from");
            draw_debug_text(temp_x + 48,temp_y - 52, "the human village?");
        }
    }
}

shader_end();

if("sharphits" in self && sharphits>0) {
draw_sprite(sprite_get("sharpened"),0 , temp_x+200, temp_y);
}


if "ready" in self && ready && !talked {
draw_sprite(sprite_get("talkative"),0 , temp_x+150, temp_y);
}

if !get_match_setting(SET_RUNES) {
	//abyss gui code
	ab_hud_x = temp_x;
	ab_hud_y = temp_y;
	//this is for the outdated warning message
	if ("depNotice" not in self) depNotice = 0;
	if ("abyssEnabled" in self && abyssEnabled && (menuActive || timerActive)) abyssDraw();
}
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