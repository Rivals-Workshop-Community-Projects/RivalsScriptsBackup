alt_cur = get_player_color(player);

var temp_x = x + 8;
var temp_y = y + 8;
var current_alt = ("alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player));

//var current_alt = get_player_color(player);

/*
switch(current_alt) {
    case 9:
        draw_sprite_ext(sprite_get("css_icons"), 0, temp_x + 162, temp_y + 96, 2, 2, 0, c_white, 1);
    break;
    case 10:
        draw_sprite_ext(sprite_get("css_icons"), 2, temp_x + 162, temp_y + 96, 2, 2, 0, c_white, 1);
    break;
    case 14:
        draw_sprite_ext(sprite_get("css_icons"), 1, temp_x + 162, temp_y + 96, 2, 2, 0, c_white, 1);
    break;
}
*/



var css_alt = 0;
switch(alt_name[current_alt]){
    case "eye for an eye":
        css_alt = 3;
    break;
    case "goner":
        css_alt = 2;
    break;
    default:
        css_alt = 1;
    break;
}


if (css_alt) { draw_sprite_ext(sprite_get("css_ex"),css_alt-1,temp_x,temp_y,2,2,0,-1,1); }

draw_set_halign(fa_left);

//animation - character
if (css_anim_time < 140)
{
    draw_sprite_ext(
        preview_idle,
        css_anim_time * preview_anim_speed,
        preview_x + (css_anim_time < 60 ?  + 24 + (css_anim_time / 20) : 16 + (css_anim_time / 5)),
        preview_y + 128,
        preview_scale,
        preview_scale,
        0,
        c_white,
        css_anim_time > 10 ? (css_anim_time * -0.01 + 1.25) + 0.2 : css_anim_time * 0.1
    );
}

//Patch Info - Format borrowed from Hime

patch_day = "22";
patch_month = "oct";
patch_year = "2026"
 
textDraw(temp_x + 3, temp_y + 126, font_get("fnt_sans"), c_white, 0, 1000, 1, true, 1, patch_month + " " + patch_day + ", " + patch_year); 
var charaAlt = (current_alt == 8);
textDraw(temp_x + 3, temp_y + 110, font_get("fnt_sans"), (charaAlt ? c_red : c_white), 0, 1000, 1, true, 1, alt_name[current_alt]);


init_shader();

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(argument[2]);
 
if (argument[7]){
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);