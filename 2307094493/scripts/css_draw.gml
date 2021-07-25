var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "";
patch_day = "";
patch_month = "";

var num_alts = 26;
var alt_cur = get_player_color(player);

//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default";
alt_name[1]  = "Negative";
alt_name[2]  = "Positive";
alt_name[3]  = "Treetop";
alt_name[4]  = "Spy";
alt_name[5]  = "Trans Rights";
alt_name[6]  = "Abyss";
alt_name[7]  = "EA";
alt_name[8]  = "Original";
alt_name[9]  = "Bi pride";
alt_name[10]  = "Melon";
alt_name[11]  = "Neon";
alt_name[12]  = "Icy";
alt_name[13]  = "Refraction";
alt_name[14]  = "Deor";
alt_name[15]  = "Royal";
alt_name[16]  = "Rough";
alt_name[17]  = "Icon";
alt_name[18]  = "Sparks";
alt_name[19]  = "Jem";
alt_name[20]  = "Pig Kid";
alt_name[21]  = "Fish";
alt_name[22]  = "Sky Rat";
alt_name[23]  = "Stunk";
alt_name[24]  = "Tight";
alt_name[25]  = "BLM";

//From FungiWizard "Siren"
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_color(x + 10, y - 6, "Version 2.3", c_white, c_white, c_white, c_white, 1);

// Date Display
draw_set_font(asset_get("tinyFont"));
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text_color(x + 210, y - 6, "April 10th, 2021", c_white, c_white, c_white, c_white, 1);


// Nut
if (alt_cur == 0){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 1){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 2){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 3){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 4){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 5){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 6){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 7){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 8){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 9){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 10){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 11){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 12){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 13){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 14){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 15){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 16){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 17){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 18){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 19){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 20){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 21){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 22){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 23){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 24){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}
if (alt_cur == 25){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 93, 1, 1, 0, c_white, 1);
}

//Patch
 
draw_set_halign(fa_left);
 
//textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
 
textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
 
 
 
//Alt
 
rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_gray : c_white;
    var draw_x = temp_x + 2 + 6.5 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140,draw_color);
}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
 
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