var temp_x = x + 8;
var temp_y = y + 9;
 
patch_ver = "0.0";
patch_day = "17";
patch_month = "DEC";
 
var num_alts = 29;
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
 
alt_name[0]  = "Egg?"; 
alt_name[1]  = "Red Egg."
alt_name[2]  = "Blu"
alt_name[3]  = "Like uh purple"
alt_name[4]  = "Shiny"; 
alt_name[5]  = "Idk I googled Pokemon egg and apparently this exists in Pokemon Go"; 
alt_name[6]  = "Joshi"; 
alt_name[7]  = "Just an Egg"; 
alt_name[8]  = "There has always been an Exggecute alt."; 
alt_name[9]  = "Wate rmelon"; 
alt_name[10]  = "Jigglypuff"; 
alt_name[11]  = "Kirby :)"; 
alt_name[12]  = "Wallnut Gaming"; 
alt_name[13]  = "fukcin... spamtong"; 
alt_name[14]  = "Eggdog's pre-evolution"; 
alt_name[15]  = "I am being forced to make a second eggdog alt please he has my wife and children"; 
alt_name[16]  = "I have made this eggdog alt with my own free will"; 
alt_name[17]  = ".--. .-.. . .- ... . / ... .- ...- . / -- ."; 
alt_name[18]  = "FTLdog"; 
alt_name[19]  = "Notorious";
alt_name[20]  = "Trans rights are Speggtacular"; 
alt_name[21]  = "What matters is on the inside"; 
alt_name[22]  = "Balanced Breakfast"; 
alt_name[23]  = ":Eggdog:"; 
alt_name[24]  = "What the fuck is that"; 
alt_name[25]  = "Ḙ̵̢̩̙̿̕ģ̵̘̻̀̾͂̎ģ̶̱̦͚̱͆̚ ̶̙͉͐̌̄ͅM̷̙̑̓̒͝a̸͚͂͛̎̃̚c̶͓͆̉͊̀͝h̸̺̟̆͊ȋ̷̛̠̰̘̂̚͝ǹ̸͇̮̥̲́̓͒̓e̶̡̹̮͉̓̓͆̈́̕ ̴̱̹͙̥̘̃̀͝Ḇ̸̖̠̪̮̊̉͠r̴̗̗̼̈́̀̈́̚̚͜o̷̢͂̑̅͝ͅk̴̛͎͇̜e̸͎͍̰͊̑̐̊̀"; 
alt_name[26]  = "Cosmic Dog";  
alt_name[27]  = "Breakfast Burger"; 
alt_name[28]  = "Singularity"; 
 
if (get_player_color(player)==24){
    if (drawtime == 1){
    sound_play(sound_get("NullThing_ver1_Escape01"), false, 0, .8);
    }
}
if (get_player_color(player)==23 || get_player_color(player)==25){
    if (drawtime == 1){
    sound_stop(sound_get("NullThing_ver1_Escape01"));
    }
}
//Patch
 
draw_set_halign(fa_left);

textDraw(temp_x + 130, temp_y + -12, "fName", c_white, 0, 1000, 1, true, 1, "VER");
textDraw(temp_x + 2, temp_y + 32, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
draw_sprite(sprite_get("stockicon"),0,x+173,y+34);

if (get_player_color(player)==14 || get_player_color(player)==15 || get_player_color(player)== 16 || get_player_color(player)== 17 || get_player_color(player)== 18 || get_player_color(player)== 23){
        draw_sprite(sprite_get("eggdog_charselect"),0,x+8,y+8);
}
if (get_player_color(player)==26){
        draw_sprite(sprite_get("pluto_eggdog_charselect"),0,x+8,y+8);
        draw_sprite(sprite_get("pluto_outline"),0,x+8,y+8);
}
if (get_player_color(player)==24){
        draw_sprite(sprite_get("nothingthere_charselect"),0,x+8,y+8);
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
//GB Icon
if (get_player_color(player)==20){
        draw_sprite(sprite_get("special_icon"),1,x+10,y+56);
    }
    
//Abyss Icon
if (get_player_color(player)==19){
        draw_sprite(sprite_get("special_icon"),0,x+10,y+56);
    }
  */  
//Special Icon
if (get_player_color(player)== 18 || get_player_color(player)== 23 || get_player_color(player)== 24 || get_player_color(player)== 25 || get_player_color(player)== 27 || get_player_color(player)== 28){
        draw_sprite(sprite_get("special_icon"),2,x+10,y+56);
    }
    
//Doesn't work online
if (get_player_color(player)==31){
        textDraw(temp_x + 30, temp_y + 110 - 5*(ceil(array_length(alt_name)/16)-1), "fName", c_white, 0, 1000, 1, true, 1, "[Doesn't work online]");
    }

/* 
//rainbow 
if !("hue" in self) hue = 0
if get_player_color(player) = 29 {
//remember rivals starts with 0
	hue+=1 
	if hue>255 hue-=255;
	//make hue shift every step + loop around
 
	color_rgb=make_color_rgb(70, 115, 255);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(29, 0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_color_profile_slot(29, 5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_color_profile_slot(29, 6,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_color_profile_slot(29, 7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));



	//set the new color using rgb values from the gamemaker color
 
 
	color_rgb=make_color_rgb(70, 115, 255);
	//make a gamemaker color variable using kirby's default color (feet)
	//hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//kirby's feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(29, 0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	set_color_profile_slot(29, 5,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_color_profile_slot(29, 6,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_color_profile_slot(29, 7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	}
//Keep repeating for every slot
init_shader();
*/

/*
muno_event_type = 6;
user_event(14);
*/
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work lol
    for (var i = -1; i < 2; i++){
        for (var j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);
 
 
 
#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);