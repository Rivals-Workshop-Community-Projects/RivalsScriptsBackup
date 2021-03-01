//Credit to Equi for the alts system. 
var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "";
patch_day = "";
patch_month = "";
 
var alt_cur = get_player_color(player) //sprite_get_xoffset(sprite_get("alts"));

var doNotInitShader = "alt_name" in self; // check if running for the first time

 
 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Default";
alt_name[1]  = "Violet";
alt_name[2]  = "Rose"
alt_name[3]  = "Vine (Sauce)";
alt_name[4]  = "Vivian";
alt_name[5]  = "Corpse Flower";
alt_name[6]  = "Abyss";
alt_name[7]  = "Early Access";
alt_name[8]  = "B.B. Hood";
alt_name[9]  = "Mori Calliope";
alt_name[10]  = "Mariah";
alt_name[11]  = "Ghost (FF6)";
alt_name[12]  = "Death";
alt_name[13]  = "Dr. Doom";
alt_name[14]  = "Ruby Rose";
alt_name[15]  = "Feri";
 
 
if(!doNotInitShader){
    init_shader(); // makes the shader update when you return to the CSS (don't know why the game is coded so that this necessary)
}
 
//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, patch_ver);
 
//textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 
 
 
//Alt
 

///Alt
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
textDraw(temp_x + 2, temp_y + 124 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "" + (alt_cur < 9 ? "0" : "") + string(alt_cur+1) + ": " + alt_name[alt_cur]);

if ((alt_cur) > 15 && player == 0) { //draw a warning that extra skins won't work online
  textDraw(temp_x + 2, temp_y + 110 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "WILL NOT WORK ONLINE");
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