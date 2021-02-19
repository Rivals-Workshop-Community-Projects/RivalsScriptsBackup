if (shold>25)
draw_sprite(sprite_get("sfx"),shold , x, y);

//draw_debug_text(x,y,"B");

if attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window == 1
draw_sprite_ext(sprite_get("uspec_arrow"),0,x+lengthdir_x(50,direc),y-40+lengthdir_y(50,direc),1,1,direc-90,c_white,1);

if (skinSelector_open) {
    draw_sprite_ext(sprite_get("skinsel_bg"),0,floor(x),floor(y-(40+char_height)+skinSelector_chars[2,3]),1,1,0,c_white,skinSelector_state == clamp(skinSelector_state,4,5) ? skinSelector_chars[2,4] : 1);
    var reps = 0;
    repeat(5) {
        var chkPlrs = false;
        draw_sprite_ext(
                        skinSelector_chars[reps,0],
                        skinSelector_chars[reps,1],
                        floor(x+skinSelector_chars[reps,2]),
                        floor(y-(44+char_height)+skinSelector_chars[reps,3]),
                        1,
                        1,
                        0,
                        skinSelector_chars[reps,5] != 0 ? c_gray : c_white,
                        skinSelector_chars[reps,4]
                        );
                        
        
        
        if (skinSelector_chars[reps,5] == player)  {
            draw_set_alpha(skinSelector_chars[reps,4]);
            draw_debug_text(floor(x-30+skinSelector_chars[reps,2]),floor(y-(40+char_height)-30+skinSelector_chars[reps,3]),"Selected");
            draw_set_alpha(1);
        } else if (skinSelector_chars[reps,5] != 0) {
            draw_set_alpha(skinSelector_chars[reps,4]);
            draw_debug_text(floor(x-10+skinSelector_chars[reps,2]),floor(y-(40+char_height)-30+skinSelector_chars[reps,3]),"P"+string(skinSelector_chars[reps,5]));
            draw_set_alpha(1);
        }
        reps++;
    }
    draw_set_alpha(skinSelector_state == clamp(skinSelector_state,4,5) ? skinSelector_chars[2,4] : 1);
    draw_sprite(sprite_get("skinsel_btn"),0,floor(x+6-16),floor(y-(40+char_height)+skinSelector_chars[2,3]));
    draw_debug_text(floor(x+32-16),floor(y-(40+char_height)+6+skinSelector_chars[2,3]),": Confirm");
    
    draw_sprite(sprite_get("skinsel_btn"),1,floor(x-62-16),floor(y-(40+char_height)+skinSelector_chars[2,3]));
    draw_debug_text(floor(x-36-16),floor(y-(40+char_height)+6+skinSelector_chars[2,3]),": Exit");
    draw_set_alpha(1);
}

//draw_debug_text(x,y-200,"Cycles")






//abyss draw code
if !get_match_setting(SET_RUNES) {
    if "abysspostdrawenabled" not in self abysspostdrawenabled = true; // tell buddy you have post draw code
    if "abyssPostDrawing" in self && abyssPostDrawing abyssPostDraw(); // actually do post draw code
}
#define abyssPostDraw 
/// abyssPostDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_postDrawArray" in self && ds_list_valid(abyss_postDrawArray))  {
    if (ds_list_size(abyss_postDrawArray) > 0) {
        for (var _i = 0; _i < ds_list_size(abyss_postDrawArray);_i++) {
            var _text = abyss_postDrawArray[| _i];
            if draw_get_halign() != _text[6] {
                draw_set_halign(_text[6]);
            }
            switch (_text[0]) {
                case 0:
                    draw_debug_text(floor(_text[1]),floor(_text[2]),(_text[3]));
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
    ds_list_clear(abyss_postDrawArray);
}
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