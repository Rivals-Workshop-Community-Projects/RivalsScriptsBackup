//draw_hud.gml
temp_color = c_white;
casual = c_black;
absx = 258;
absy = 464;

codecbg_x = absx - 257.5;
codecbg_y = absy - 90;

codecx = absx + 8;
codecy = absy - 80;

speakeronex = absx + 370;
speakeroney = absy - 77.5;

speakertwox = absx+15;
speakertwoy = absy - 77.5;

codectextx = absx + 96;
codectexty = absy - 64;

if get_gameplay_time() < 120{
    if babymode == 0{
        draw_debug_text(temp_x, temp_y - 20, "Press Parry to activate Baby Mode");
    }
    if babymode == 1{
        draw_debug_text(temp_x, temp_y - 20, "Press Parry to deactivate Baby Mode");
    }
} else {
  if babymode == 1{
    draw_sprite_ext( sprite_get("babymode"), xfactor_timer, temp_x + 180, temp_y - 30, 2, 2, 0, temp_color, 1 );
  }
}

if trumarvel{
  if xfactor_timelimit > 0{
    draw_sprite_ext( sprite_get("xfacactive"), xfactor_timer, temp_x - 95, temp_y - 45, 1.5, 1.5, 0, temp_color, .75 );
  }
  if xfactor_lvl == 0{
    draw_sprite_ext( sprite_get("xfaclevel0"), xfactor_timer, temp_x - 95, temp_y - 45, 1.5, 1.5, 0, temp_color, 1 );
  }
  if xfactor_lvl == 1{
    draw_sprite_ext( sprite_get("xfaclevel1"), xfactor_timer, temp_x - 95, temp_y - 44, 1.5, 1.5, 0, temp_color, 1 );
  }
  if xfactor_lvl == 2{
    draw_sprite_ext( sprite_get("xfaclevel2"), xfactor_timer, temp_x - 95, temp_y - 44, 1.5, 1.5, 0, temp_color, 1 );
  }
  if xfactor_lvl == 3{
    draw_sprite_ext( sprite_get("xfaclevel3"), xfactor_timer, temp_x - 95, temp_y - 44, 1.5, 1.5, 0, temp_color, 1 );
  }
} else {
  draw_sprite_ext( asset_get("empty_sprite"), xfactor_timer, temp_x - 95, temp_y - 44, 1.5, 1.5, 0, temp_color, 1 );
}


// codec
draw_sprite_ext( sprite_get("codecaux"), codecbg_timer, codecbg_x, codecbg_y, 1, 1, 0, temp_color, codec_visible );
draw_sprite_ext( sprite_get("codecbwoop"), bwoop_timer, codecx, codecy, 1, 1, 0, temp_color, bwoop_visible );

if (faces_visible && speaker1 == ("penny")){
  draw_sprite_ext( sprite_get("codecpenny"), lipflaps, speakeronex, speakeroney, 1, 1, 0, temp_color, 1 );
  draw_sprite_ext( sprite_get("codecblinkpenny"), blink, speakeronex, speakeroney, 1, 1, 0, temp_color, 1 );
}
else if (faces_visible && speaker1 == ("static")){
  draw_sprite_ext( sprite_get("codecstatic"), blink, speakeronex, speakeroney, 1, 1, 0, temp_color, 1 );
}else {
  draw_sprite_ext( sprite_get("codecpenny"), lipflaps, speakeronex, speakeroney, 1, 1, 0, temp_color, 0 );
  draw_sprite_ext( sprite_get("codecblinkpenny"), blink, speakeronex, speakeroney, 1, 1, 0, temp_color, 0 );
}

if (faces_visible && speaker2 == ("forza")){
  draw_sprite_ext( sprite_get("codecforza"), lipflaps2, speakertwox, speakertwoy, 1, 1, 0, temp_color, 1 );
  draw_sprite_ext( sprite_get("codecblinkforza"), blink, speakertwox, speakertwoy, 1, 1, 0, temp_color, 1 );
}

if (faces_visible && speaker2 == ("aigis")){
  draw_sprite_ext( sprite_get("codecaigis"), lipflaps2, speakertwox, speakertwoy, 1, 1, 0, temp_color, 1 );
  draw_sprite_ext( sprite_get("codecblinkaigis"), blink, speakertwox, speakertwoy, 1, 1, 0, temp_color, 1 );
}

if (faces_visible && speaker2 == ("hime")){
  draw_sprite_ext( sprite_get("codechime"), lipflaps2, speakertwox, speakertwoy, 1, 1, 0, temp_color, 1 );
  draw_sprite_ext( sprite_get("codecblinkhime"), blink, speakertwox, speakertwoy, 1, 1, 0, temp_color, 1 );
}

if (faces_visible && speaker2 == ("static")){
  draw_sprite_ext( sprite_get("codecstatic"), blink, speakertwox, speakertwoy, 1, 1, 0, temp_color, 1 );
}

if (codec_active == 2 && faces_visible && (panel == 0 && codectimerbs >= 3)){
  draw_set_halign(fa_left);
  draw_set_valign(fa_top);
  draw_set_font(1);
  // Outline
  draw_text_ext_colour(codectextx+2, codectexty, codectext, 16, 250, casual, casual, casual, casual, 1);
  draw_text_ext_colour(codectextx-2, codectexty, codectext, 16, 250, casual, casual, casual, casual, 1);
  draw_text_ext_colour(codectextx, codectexty+2, codectext, 16, 250, casual, casual, casual, casual, 1);
  draw_text_ext_colour(codectextx+2, codectexty-2, codectext, 16, 250, casual, casual, casual, casual, 1);
  draw_text_ext_colour(codectextx+2, codectexty+2, codectext, 16, 250, casual, casual, casual, casual, 1);
  draw_text_ext_colour(codectextx, codectexty+2, codectext, 16, 250, casual, casual, casual, casual, 1);
  draw_text_ext_colour(codectextx+2, codectexty-2, codectext, 16, 250, casual, casual, casual, casual, 1);
  draw_text_ext_colour(codectextx-2, codectexty-2, codectext, 16, 250, casual, casual, casual, casual, 1);

  draw_text_ext_colour(codectextx, codectexty, codectext, 16, 250, temp_color, temp_color, temp_color, temp_color, 1);
}
else if (codec_active == 2 && faces_visible && (panel > 0 && codectimerbs >= 0)){
  draw_set_halign(fa_left);
  draw_set_valign(fa_top);
  draw_set_font(1);
  // Outline
  draw_text_ext_colour(codectextx+2, codectexty, codectext, 16, 250, casual, casual, casual, casual, 1);
  draw_text_ext_colour(codectextx-2, codectexty, codectext, 16, 250, casual, casual, casual, casual, 1);
  draw_text_ext_colour(codectextx, codectexty+2, codectext, 16, 250, casual, casual, casual, casual, 1);
  draw_text_ext_colour(codectextx+2, codectexty-2, codectext, 16, 250, casual, casual, casual, casual, 1);
  draw_text_ext_colour(codectextx+2, codectexty+2, codectext, 16, 250, casual, casual, casual, casual, 1);
  draw_text_ext_colour(codectextx, codectexty+2, codectext, 16, 250, casual, casual, casual, casual, 1);
  draw_text_ext_colour(codectextx+2, codectexty-2, codectext, 16, 250, casual, casual, casual, casual, 1);
  draw_text_ext_colour(codectextx-2, codectexty-2, codectext, 16, 250, casual, casual, casual, casual, 1);

  draw_text_ext_colour(codectextx, codectexty, codectext, 16, 250, temp_color, temp_color, temp_color, temp_color, 1);
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
