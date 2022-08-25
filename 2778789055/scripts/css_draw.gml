if (get_color_profile_slot_r(1, 0) == 179) {
    sound_play(asset_get("sfx_hod_steam_level1"));
    set_color_profile_slot( 1, 0, 180, 138, 102 );
}

var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "1.0";
patch_day = "22";
patch_month = "AUG";
 
var num_alts = 25;
var alt_cur = get_player_color(player);
var alt = get_player_color(player);
 
if ("prev_alt" not in self){
drawtime = 0
drawing = 0
}
    
if ("prev_alt" in self && prev_alt != alt){
     drawtime = 0
}

if(drawtime < 5){
drawtime += 1
}
prev_alt = alt;
 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Po & Gumbo"; 
alt_name[1]  = "Mud-Flats"; 
alt_name[2]  = "Freshwater"; 
alt_name[3]  = "Toxic"; 
alt_name[4]  = "Albino"; 
alt_name[5]  = "Wired"; 
alt_name[6]  = "Slick"; 
alt_name[7]  = "Mardi Gras"; 
alt_name[8]  = "Intimidate"; 
alt_name[9]  = "Gourmet"; 
alt_name[10]  = "Lightners"; 
alt_name[11]  = "Weird Autumn"; 
alt_name[12]  = "From Mud to Sludge"; 
alt_name[13]  = "Jam-balaya"; 
alt_name[14]  = "Fishing Trout Lads"; 
alt_name[15]  = "Something something Alligator Florida"; 
alt_name[16]  = "Odor Blocker"; 
alt_name[17]  = "We need to cook"; 
alt_name[18]  = "It's a reference"; 
alt_name[19]  = "The OG Wobblers"; 
alt_name[20]  = "Seasoned Veterans"; 
alt_name[21]  = "Fresh off the Grill"; 
alt_name[22]  = "Having fun at Dave-Land"; 
alt_name[23]  = "Leakage"; 
alt_name[24]  = "Reverse"; 
alt_name[25]  = "Riptide"; 

if (get_player_color(player)==23){
        draw_sprite(sprite_get("drip_charselect"),0,x+8,y+8);
}if (get_player_color(player)==25){
        draw_sprite(sprite_get("charselect_summer"),0,x+8,y+8);
}
if (get_player_color(player)==23){
    if (drawtime == 1){
    sound_play(sound_get("drip"))
    }
}
 
//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 134, temp_y + -12, "fName", c_white, 0, 1000, 1, true, 1, "VER");
textDraw(temp_x + 2, temp_y + 32, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
draw_sprite(sprite_get("stockicon"),0,x+156,y+34);

/*
//GB Icon
if (get_player_color(player)==13){
        draw_sprite(sprite_get("special_icon"),1,x+10,y+56);
    }
//Abyss Icon
if (get_player_color(player)==14){
        draw_sprite(sprite_get("special_icon"),0,x+10,y+56);
    }
    */
//Special Icon
if (get_player_color(player)== 23){
    //shader_end();
        draw_sprite(sprite_get("special_icon"),2,x+10,y+56);
        //shader_start();
    }
 
//Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(var i = 0; i < ceil(array_length(alt_name)/16); i++){
    for(var j = 0; j < min(array_length(alt_name)-i*16, 16); j++){
        var draw_color = (j+16*i == alt_cur) ? c_white : c_gray;
        var draw_x = temp_x + 2 + 10 * j;
        rectDraw(draw_x, temp_y + 137 - 5*i, draw_x + 7, temp_y + 140 - 5*i, draw_color);
    }
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "" : "") + string(alt_cur+1) + ": " + alt_name[alt_cur]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
/*
muno_event_type = 6;
user_event(14);
*/
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