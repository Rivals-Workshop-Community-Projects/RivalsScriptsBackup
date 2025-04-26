var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "0.1";
patch_day = "25";
patch_month = "OCT";
 
var num_alts = 31;
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
var read_alts = 0;
if(read_alts = 0){
alt_name[0]  = "Flower Girl"; 
alt_name[1]  = "Kingdom Hearts"; 
alt_name[2]  = "Crisis Core"; 
alt_name[3]  = "Before Crisis"; 
alt_name[4]  = "Wall Market"; 
alt_name[5]  = "Redi XIII"; 
alt_name[6]  = "Cid"; 
alt_name[7]  = "Sephiroth"; 
alt_name[8]  = "Wedge"; 
alt_name[9]  = "Elmyra"; 
alt_name[10]  = "Young"; 
alt_name[11]  = "Kid"; 
alt_name[12]  = "Ifalna"; 
alt_name[13]  = "Lucrecia"; 
alt_name[14]  = "Cissnei"; 
alt_name[15]  = "Amano"; 
alt_name[16]  = "Terra"; 
alt_name[17]  = "Shirma"; 
alt_name[18]  = "Sora"; 
alt_name[19]  = "Aqua"; 
alt_name[20]  = "Star Ocean"; 
alt_name[21]  = "She's Lesbian"; 
alt_name[22]  = "Non Binary"; 
alt_name[23]  = "Transgener"; 
alt_name[24]  = "Luka"; 
alt_name[25]  = "Powa"; 
alt_name[26]  = "Morrigan"; 
alt_name[27]  = "Juri"; 
alt_name[28]  = "Kumatora"; 
alt_name[29]  = "Jet"; 
alt_name[30]  = "I-No"; 

read_alts = 1;
}
 
//Patch
 
draw_set_halign(fa_left);
 
textDraw(temp_x + 134, temp_y + -12, "fName", c_white, 0, 1000, 1, true, 1, "VER");
textDraw(temp_x + 2, temp_y + 32, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
//draw_sprite(sprite_get("stockicon"),0,x+172,y+34);

switch (get_player_color(player)){
    case 0:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 18:
    case 20:
    case 21:
    case 23:
    case 25:
    case 27:
    case 28:
    case 29:
    case 30:
	set_ui_element(UI_CHARSELECT, sprite_get("charselect_1"));
	set_ui_element(UI_HUD_ICON, sprite_get("hud_1"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hurt_1"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small_1")); 
	set_ui_element(UI_OFFSCREEN, sprite_get("offscreen_1"));
    break;
    
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 16:
    case 17:
    case 19:
    case 22:
    case 24:
    case 26:
	set_ui_element(UI_CHARSELECT, sprite_get("charselect_2"));
	set_ui_element(UI_HUD_ICON, sprite_get("hud_2"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hurt_2"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small_2")); 
	set_ui_element(UI_OFFSCREEN, sprite_get("offscreen_2"));
    break;
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