// css_draw will draw things in your character select screen.


var temp_x = x + 8;
var temp_y = y + 9;

 
var num_alts = 8;
var alt_cur = get_player_color(player);
 

// alt names

alt_name[0]  = "CEC Suit";
alt_name[1]  = "Earth Gov Suit";
alt_name[2]  = "Military Grade Suit";
alt_name[3]  = "Elite Suit";
alt_name[4]  = "Advanced Suit";
alt_name[5]  = "Scorpion Suit";
alt_name[6]  = "Dread Suit";
alt_name[7]  = "Mjolnir Suit";
alt_name[8]  = "Neon Suit";

// alt list ui

rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(var i = 0; i < ceil(array_length(alt_name)/16); i++){
    for(var j = 0; j < min(array_length(alt_name)-i* 0, 9); j++){
        var draw_color = (j+16*i == alt_cur) ? c_white : c_gray;
        var draw_x = temp_x + 2 + 10 * j;
        rectDraw(draw_x, temp_y + 137 - 5*i, draw_x + 7, temp_y + 140 - 5*i, draw_color);
    }
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "" : "") + string(alt_cur+1) + ": " + alt_name[alt_cur])

// Code from Soldier

if (get_color_profile_slot_r(1, 0) == 255) {
    sound_play(sound_get("isaac_ui_select"));
    set_color_profile_slot( 0, 0, 191, 133, 85 );
}

var temp_x = x + 8;
var temp_y = y + 9;


// Code from Sai's Chara

if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);

if ("prev_alt" not in self){
drawtime = 0

}
 
if ("alttime" not in self){
alttime = 0 
}


if ("prev_alt" in self && prev_alt != alt){
     drawing = floor(alttime%8)
     drawtime = 0
     sound_play(sound_get("isaac_ui_colorchange"))
}

drawtime += 1 
alttime += 1 

prev_alt = alt;

// Character Flash

if ("prev_alt" not in self){
drawtime = 0
drawing = 0
}
init_shader();

if ("prev_alt" in self && prev_alt != alt){
     drawtime = 0
}



drawtime += 1 


prev_alt = alt;


if drawtime < 3 {
    draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);

    if drawtime < 3 {
        draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,0.1);    
    }
    
}

 
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 
 
 
#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);