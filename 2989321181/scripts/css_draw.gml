if !("hue" in self) hue = 0
if get_player_color(player) == 20 {
    //remember rivals starts with 0
	hue+=1 
    if hue>255 hue-=255;
    //make hue shift every step + loop around
    
    color_rgb = make_color_rgb(225, 50, 50);
    color_rgb3 = make_color_rgb(255, 204, 204);
    //make a gamemaker color variable using kirby's default color (body)
    hue2=(color_get_hue(color_rgb)+hue) mod 255;
    //shift that colour by Hue, make sure it also loops
    color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb));
    color_hsv3=make_color_hsv(hue2,color_get_saturation(color_rgb3),color_get_value(color_rgb3));
    //make a gamemaker color variable using the new hue
    //set_color_profile_slot(20, 2,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
    set_color_profile_slot(20, 0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_color_profile_slot(20, 1,325-color_get_red(color_hsv),325-color_get_green(color_hsv),325-color_get_blue(color_hsv));
    //set the new color using rgb values from the gamemaker color
    init_shader();
}

var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "";
patch_day = "18";
patch_month = "SEPT";

var drawAlpha = 1;
var num_alts = 30;
var alt_cur = get_player_color(player);

var doNotInitShader = "alt_name" in self; // check if running for the first time

if(!variable_instance_exists(id,"timerSelect")) //init variables.
{
    timerSelect = 0;
    altSelected = 0;
}
pitchSelect = random_func(0, 10, false)/50;
timerSelect ++;
if(altSelected != alt_cur)
{
    timerSelect = 0;
    drawAlpha = 1;
    sound_play(sound_get("bb-clang"), false, noone, 0.1, 0.9 + pitchSelect);
    altSelected = alt_cur;
}
if(timerSelect > 50)
{
    drawAlpha = (1-(timerSelect - 50)/30);
}

// Intro Sound
//sound_play(sound_get("oh"));
//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Storm Pegasus";
alt_name[1]  = "Hyper Aquario";
alt_name[2]  = "Burn Fireblaze";
alt_name[3]  = "Rock Leone";
alt_name[4]  = "Flame Saggitario";
alt_name[5]  = "Earth Eagle";
alt_name[6]  = "Lightning L-Drago";
alt_name[7]  = "Fusion Pegasus";
alt_name[8]  = "Cyber Pegasus";
alt_name[9]  = "Mercury Anubis";
alt_name[10]  = "Blitz Lynx";
alt_name[11]  = "Vulcan Horuseus";
alt_name[12]  = "Diabolo Nemesis";
alt_name[13]  = "Twisted Tempo";
alt_name[14]  = "Libra";
alt_name[15]  = "Meteo L-Drago";
alt_name[16]  = "Omega Dragonis";
alt_name[17]  = "Hades Kerbecs";
alt_name[18]  = "Top Rights";
alt_name[19]  = "Bey Lives Winning";
alt_name[20]  = "GAYBLADE????";
alt_name[21]  = "The Bey Used to Part the Red Sea";
alt_name[22]  = "Hey Bey-ter";
alt_name[23]  = "Yamcha";

if(!doNotInitShader){
    init_shader(); // makes the shader update when you return to the CSS (don't know why the game is coded so that this necessary)
}

cssColor = make_color_rgb(get_color_profile_slot_r(get_player_color(player), 4), get_color_profile_slot_g(get_player_color(player), 4), get_color_profile_slot_b(get_player_color(player), 4))

//Patch
draw_sprite_ext(sprite_get("css_bg"), 0, temp_x, temp_y, 1, 1, 0, cssColor, 1);

sprite_change_offset("charselect", 51, 0);
draw_sprite_ext(sprite_get("charselect"), 0, temp_x+102, temp_y, 2, 2, 0, c_white, 1);


draw_set_halign(fa_left);
draw_set_alpha((1-(timerSelect)/8));
rectDraw(temp_x, temp_y, temp_x + 201, temp_y + 142, c_white);
/*
textDraw(temp_x + 2, temp_y + 75, "medFont", c_white, 0, 1000, 1, true, 1, "" + patch_ver);

textDraw(temp_x + 2, temp_y + 98, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
*/


/*draw_set_halign(fa_left);
draw_set_alpha(1);
//Alt


rectDraw(x+10, temp_y +125, x + 210, temp_y +142, c_black);
for(i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? c_white : c_gray;
	if i > 15 {
		var draw_x = temp_x + 4 + 12 * (i - 16);
		rectDraw(draw_x, temp_y +140, draw_x + 9, temp_y +134, draw_color);
	} else {
		var draw_x = temp_x + 4 + 12 * i;
		rectDraw(draw_x, temp_y +133, draw_x + 9, temp_y +127, draw_color);
	}
}*/

draw_set_halign(fa_left);
draw_set_alpha(1);
//include alt. name
textDraw(temp_x + 6, temp_y + 128, "fName", c_white, 0, 1000, 1, true, 1, "#" + string(alt_cur+1) + ":" + alt_name[alt_cur]);
//exclude alt. name
//textDraw(temp_x + 2, temp_y + 112, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));


#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);



#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);