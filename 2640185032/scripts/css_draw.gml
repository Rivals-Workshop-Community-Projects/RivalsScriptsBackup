var temp_x = x + 8;
var temp_y = y + 9;
 
/*patch_ver = "2.14";
patch_day = "";
patch_month = "";//*/
 
var num_alts = 16;
var alt_cur = get_player_color(player);
 
var brawl = 1;

if (brawl = 1){ 
    
if (get_color_profile_slot_b(0, 0) == 244) {
    sound_play(sound_get("r"), false, 0);
        brawl_flash_opacity = 0.9;
    set_color_profile_slot(0, 0, get_color_profile_slot_r(0, 0)+1, get_color_profile_slot_g(0, 0)+1, get_color_profile_slot_b(0, 0)+1);
}

if variable_instance_exists(self, "brawl_flash_opacity"){
    brawl_flash_opacity = brawl_flash_opacity - 0.05;
draw_sprite_ext(sprite_get("brawl_flash"), 0, x+7, y+8, 1, 1, 0, c_white, brawl_flash_opacity);    
}


draw_sprite(sprite_get("charselectg"),0,x+7,y+8);  
draw_sprite(sprite_get("brawl_nameplate"),0,x+7,y+8);  


} 

 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Frosted";
alt_name[1]  = "Charred";
alt_name[2]  = "Noxious";
alt_name[3]  = "Eroded";
alt_name[4]  = "23";
alt_name[5]  = "Dark";
alt_name[6]  = "Authority";
alt_name[7]  = "Tropical";
alt_name[8]  = "Around the World";
alt_name[9]  = "Served to Order";
alt_name[10] = "Unstable Prototype";
alt_name[11] = "Under Cover";
alt_name[12] = "Mystic Eyes";
alt_name[13] = "Speed Star";
alt_name[14] = "Gentle Breeze";
alt_name[15] = "Zenith";


//Patch
 
draw_set_halign(fa_left);
 
//textDraw(temp_x + 2, temp_y + 34, "fName", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
 
//textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 //Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = temp_x + 2 + 10 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 6 + ((player==0)?32:0), temp_y + 120, "fName", c_white, 0, 1000, 1, true, 1, /*"Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " +*/ alt_name[alt_cur]);
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