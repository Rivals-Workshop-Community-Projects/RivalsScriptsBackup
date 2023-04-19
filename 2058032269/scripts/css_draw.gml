if (get_color_profile_slot_r(1, 0) == 1) {
    var announcer = random_func_2(0, 5, true);
    switch(announcer) {
        case 0:
        default:
            sound_play(sound_get("announcer_a"));
        break;
        
        case 1:
            sound_play(sound_get("announcer_b"));
        break;
        
        case 2:
            sound_play(sound_get("announcer_c"));
        break;
        
        case 3:
            sound_play(sound_get("announcer_d"));
        break;
        
        case 4:
            sound_play(sound_get("announcer_e"));
        break;
    }
    set_color_profile_slot(1, 0, 0, 166, 255);
}

var temp_x = x + 8;
var temp_y = y + 8;
 
var alt_cur = get_player_color(player);

alt_name[0]  = "Cuphead";
alt_name[1]  = "Mugman";
alt_name[2]  = "Parry";
alt_name[3]  = "Soundtrack Art";
alt_name[4]  = "Black & White";
alt_name[5]  = "Bad Ending";
alt_name[6]  = "Bendy"; //Special Alt
alt_name[7]  = "Abyss";
alt_name[8]  = "Seasonal";
alt_name[9]  = "Early Access";
 
draw_set_halign(fa_left);
 
draw_sprite_ext(sprite_get("css_icons"), alt_cur, temp_x + 162, temp_y + 96, 2, 2, 0, c_white, 1); 

if (get_player_color(player) == 10){
    for(i = 0; i < 6; i++){
        set_character_color_shading(i, 0);
    }
}

//Patch Info - Format borrowed from Hime

patch_day = "21";
patch_month = "SEP";
patch_year = "2022";
 
textDraw(temp_x + 70, temp_y - 11, "fName", c_white, 0, 1000, 1, true, 1, patch_month + " " + patch_day + ". " + patch_year); 
 
//textDraw(temp_x + 48, temp_y + 120, "fName", c_white, 0, 1000, 1, true, 1, alt_name[alt_cur]);
 
 
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if (argument[7]){
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 
