////////////////////////Alt Stuff////////////////////////////////

if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);

draw_sprite_ext(sprite_get("charselectbg"),0,temp_x-2,temp_y-2,2,2,0,-1,1);

if ("prev_alt" not in self){
drawtime = 0
drawing = 0
}
    
if ("prev_alt" in self && prev_alt != alt){
     drawtime = 0
}

//Blu Alt
if alt == 1 {
  draw_sprite_ext(sprite_get("logo"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
}

//Bingy Alt
if alt == 6 {
  draw_sprite_ext(sprite_get("logo"),1,temp_x-2,temp_y-2,2,2,0,-1,1);
}

//Troll Alt
if alt == 7 {
  draw_sprite_ext(sprite_get("logo"),2,temp_x-2,temp_y-2,2,2,0,-1,1);
}

//Ans Alt
if alt == 2 {
  draw_sprite_ext(sprite_get("logo"),3,temp_x-2,temp_y-2,2,2,0,-1,1);
}

//Shujo Alt
if alt == 3 {
  draw_sprite_ext(sprite_get("logo"),4,temp_x-2,temp_y-2,2,2,0,-1,1);
}

//Nep Alt
if alt == 4 {
  draw_sprite_ext(sprite_get("logo"),5,temp_x-2,temp_y-2,2,2,0,-1,1);
}

//Subi Alt
if alt == 5 {
  draw_sprite_ext(sprite_get("logo"),6,temp_x-2,temp_y-2,2,2,0,-1,1);
}


//Kawaii Alt
if alt == 10 {
  draw_sprite_ext(sprite_get("charselecthearts2"),drawtime / 1,temp_x-2,temp_y-2,2,2,0,-1,1);
}

drawtime += 1 

if alt == 10 {
    if drawtime == 1 {
        sound_play(sound_get("wow"))
    }
}

//Display's Face
prev_alt = alt;
draw_sprite_ext(sprite_get("charselectver"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
//More Kawaii Alt
if alt == 10 {
    draw_sprite_ext(sprite_get("charselecthearts"),drawtime / 2,temp_x-2,temp_y-2,2,2,0,-1,1);
    draw_sprite_ext(sprite_get("charselect2"),drawtime / 5,temp_x-2,temp_y-2,2,2,0,-1,1);
}
////////////////////////Draw idle anim////////////////////////////////

//if drawtime < 120 {
//draw_sprite_ext(sprite_get("idle"),drawtime/5,temp_x-2,temp_y+54 - floor(drawtime/2),1,1,0,-1,2 - drawtime/60);
//}
//sprite_change_offset("idle", 0, 0);

//Muno//
user_event(12);

////////////////////////Display Bar////////////////////////////////

var temp_x = x + 8;
var temp_y = y + 9;
 
var num_alts = 12;
var alt_cur = get_player_color(player);

 
//Alt name init. var doesn't work with arrays lol
 
alt_name[0]  = "Log";
alt_name[1]  = "BluAxolotl";
alt_name[2]  = "Ans";
alt_name[3]  = "Shujo";
alt_name[4]  = "Nep";
alt_name[5]  = "Subi";
alt_name[6]  = "Bingy";
alt_name[7]  = "Troll";
alt_name[8]  = "Abyss";
alt_name[9]  = "Nega";
alt_name[10]  = "Kawaii";
alt_name[11]  = "Bugingi";
alt_name[12]  = "Calda";
alt_name[13]  = "Quil";

 
//Alt
 
//rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
 
//for(i = 0; i < num_alts; i++){
//    var draw_color = (i == alt_cur) ? c_white : c_gray;
//    var draw_x = temp_x + 2 + 10 * i;
//    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
//}
 
draw_set_halign(fa_left);
 
//include alt. name
textDraw(temp_x + 2, temp_y + 130, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur) + ": " + alt_name[alt_cur]);
 
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

