//big chung ugs
var temp_color = c_white;

//skeletonhud
if ("skeletonmany" in self){
    draw_sprite_ext(sprite_get("skeletonhud"), skeletonmany, temp_x+42, temp_y-38, 2, 2, 0, temp_color, 1)
    skele_hud_cd = 0;
    draw_cd = 0;
    if (skeletonrecharge == 1){
        skele_hud_cd = ((100 - skeletoncooldown) / 5.8) - 1; //Equals 17~
        draw_cd = 1;
    }
    else if (skeletonrecharge == 2){
        skele_hud_cd = ((275 - skeletoncooldown) / 16) - 1; // Equals 17~
        draw_cd = 1;
    }
    if (draw_cd == 1){
        draw_sprite_ext(sprite_get("hud_cooldown"), skele_hud_cd, temp_x+42, temp_y-38, 2, 2, 0, temp_color, 1)
    }
}

if ("endermany" in self){
      draw_sprite_ext(sprite_get("ender"), endermany, temp_x+80, temp_y-38, 2, 2, 0, temp_color, 1)
}

if ("tntout" in self){
    if (tntout == 1){
      tnt_hud = 0;
    }
    else{
      tnt_hud = 1;
    }
    draw_sprite_ext(sprite_get("tnthud"), tnt_hud, temp_x+4, temp_y-38, 2, 2, 0, temp_color, 1);
}

//pogger!

//big chungus IS funny shut up


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
