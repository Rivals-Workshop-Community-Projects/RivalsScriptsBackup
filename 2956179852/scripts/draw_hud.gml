// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;

// if(get_gameplay_time() <= 120){
// 	if(!muted){
// 		draw_debug_text(temp_x, temp_y - 40, "Press Taunt to disable voice.");
// 	}
// 	if(taunt_pressed && !muted){
//         muted = true;
//         sound_play(sound_get("gay"))
// 	}
// }
shader_start();
var meatball_sprite;
if(meatball_fill < .4)meatball_sprite = 3;
if(meatball_fill >= .4 && meatball_fill < .8)meatball_sprite = 4;
if(meatball_fill >= .8 && meatball_fill < 1.2)meatball_sprite = 5;
if(meatball_fill >= 1.2)meatball_sprite = 6;

if(downspecialcharge > 0){
    var toast_sprite = 0;
    var toast_count = 1;
    toast = [0,0,0];
    if(downspecialcharge >= 30)toast_count = 2;
    if(downspecialcharge >= 60)toast_count = 3;
    
    if(downspecialcharge >= 10)toast[0] = 1;
    if(downspecialcharge >= 20)toast[0] = 2; 
    if(downspecialcharge >= 40)toast[1] = 1;
    if(downspecialcharge >= 50)toast[1] = 2;
    if(downspecialcharge >= 70)toast[2] = 1;
    if(downspecialcharge >= 80)toast[2] = 2;    
    for(var i = 0; i < toast_count; i++){
        draw_sprite_ext(sprite_get("hud_icons"),toast[i],temp_x-(i*10)+((meatball_sprite == 2)?130:(meatball_sprite == 3)?125:(meatball_sprite == 4)?120:115),temp_y-28,2,2,0,-1,1);    
    }
}
draw_sprite_ext(sprite_get("hud_icons"+(alt!=0?"_alts":"")),meatball_sprite,temp_x+210,temp_y-28,-2,2,0, -1,1);
shader_end();
//draw_debug_text(temp_x, temp_y - 40, string(downspecialcharge));

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