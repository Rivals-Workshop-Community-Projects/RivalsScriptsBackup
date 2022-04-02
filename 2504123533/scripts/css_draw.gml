var temp_x = x + 8;
var temp_y = y + 9;

var num_alts = 24;
var alt_cur = get_player_color(player);
 
 var brawl = 1;

if (brawl = 1){ 
    
if (get_color_profile_slot_b(0, 0) == 231) {
    sound_play(sound_get("r"), false, 0, 2.75);
        brawl_flash_opacity = 0.9;
    set_color_profile_slot(0, 0, get_color_profile_slot_r(0, 0)+1, get_color_profile_slot_g(0, 0)+1, get_color_profile_slot_b(0, 0)+1);
}

if variable_instance_exists(self, "brawl_flash_opacity"){
    brawl_flash_opacity = brawl_flash_opacity - 0.05;
draw_sprite_ext(sprite_get("brawl_flash"), 0, x+7, y+8, 1, 1, 0, c_white, brawl_flash_opacity);    
}


draw_sprite(sprite_get("charselectg"),0,x+8,y+8);  
draw_sprite(sprite_get("brawl_nameplate"),0,x+7,y+8);   


} 

 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Phosphorescent Potionist";
alt_name[1]  = "Blue Ocean";
alt_name[2]  = "Lava Lamp";
alt_name[3]  = "Turquoise Waves";
alt_name[4]  = "Dim";
alt_name[5]  = "Purpur";
alt_name[6]  = "Abyss";
alt_name[7]  = "Faux EA";
alt_name[8]  = "Heir of Miasma";
alt_name[9]  = "Bubble Squid";
alt_name[10]  = "Flowers of Antimony";
alt_name[11]  = "Hatterene Rights";
alt_name[12] = "Rusted Dusk"
alt_name[13] = "The Owl Lady";
alt_name[14] = "Stay Winning"
alt_name[15] = "Choccy Milk";
alt_name[16] = "Reigalorian";
alt_name[17] = "Kinetic Orbit";
alt_name[18] = "Flask Clone";
alt_name[19] = "Fashionista";
alt_name[20] = "Tusspells";
alt_name[21] = "Slime Girl";
alt_name[22] = "Killer Queen";
alt_name[23] = "Derby Champion";

//Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = temp_x + 8 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 5, temp_y + 140, draw_color);
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y - 22, "fName", c_white, 0, 1000, 1, true, 1, (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
 
 
 
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