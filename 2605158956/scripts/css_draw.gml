//Alt 19 is a rainbow alt
if !("hue" in self) hue = 0;

//remember rivals starts with 0
hue+=1 
if hue>255 hue-=255;

//make hue shift every step + loop around
color_rgb_css = make_color_rgb(250, 150, 150);
//make a gamemaker color variable using kirby's default color (body)
//shift that colour by Hue, make sure it also loops
color_hsv_css=make_color_hsv(hue,color_get_saturation(color_rgb_css),color_get_value(color_rgb_css));

color_rgb = make_color_rgb(250, 150, 150);
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb));
//make a gamemaker color variable using the new hue
set_color_profile_slot(19, 0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
set_color_profile_slot(19, 1,450-color_get_red(color_hsv),450-color_get_green(color_hsv),450-color_get_blue(color_hsv));
//set the new color using rgb values from the gamemaker color
init_shader();

if (get_player_color( player ) == 6 || get_player_color( player ) == 25) {
    for(i = 0; i < 9; i++){
        set_character_color_shading(i, 0);
    }
}

var alt_new = get_player_color(player);
if (!"currAlt" in self)
{
	currAlt = alt_new;
}
else if (alt_new != currAlt)
{
	sound_stop(asset_get("mfx_change_color"));
	sound_play(sound_get("TB_menubutton"), 0, 0, 1);
	currAlt = alt_new;
}

//Here's how the Alt names work
var temp_x = x + 8;
var temp_y = y + 8;

patch_ver = "1.0";
patch_day = "";
patch_month = "";

var drawAlpha = 1;
var num_alts = 20;
var alt_cur = get_player_color(player);

var doNotInitShader = "alt_name" in self; // check if running for the first time

//Alt name init. var doesn't work with arrays lol
alt_name[0]  = "Turnip Boy";
alt_name[1]  = "Real Estate";
alt_name[2]  = "Construction Worker";
alt_name[3]  = "Rocky Field Trip";
alt_name[4]  = "Blackberry";
alt_name[5]  = "Old Fashioned Mafia";
alt_name[6]  = "Game Boy (commits tax evasion)";
alt_name[7]  = "Abyss Fruit";
alt_name[8]  = "Seasonal Greens";
alt_name[9]  = "Infarmous";
alt_name[10] = "Mayor Onion";
alt_name[11] = "slayQueen32";
alt_name[12] = "Hair Stylist";
alt_name[13] = "Studious Avocado";
alt_name[14] = "Grave Digger";
alt_name[15] = "Pickled Gang";
alt_name[16] = "Rotten Fruit";
alt_name[17] = "Nuclear Turnip";
alt_name[18] = "Golden Turnip";
alt_name[19] = "Chroma-copia";
alt_name[20] = "Odd Fellow";
alt_name[21] = "True Tax Fiend";
alt_name[22] = "Cubitt DSpecial";
alt_name[23] = "boy.";
alt_name[24] = "Pin Cushion";
alt_name[25] = "Flat Stanley";
alt_name[26] = "Turnip.. Girl?";
alt_name[27] = "Just Turnip";
alt_name[28] = "Ducky with ducky";

if(!doNotInitShader){
    init_shader(); // makes the shader update when you return to the CSS (don't know why the game is coded so that this necessary)
}

if (get_player_color(player) == 28){
	draw_sprite(sprite_get("cssBirb"), 0, temp_x, temp_y);
}

//Patch
draw_set_halign(fa_left);

textDraw(temp_x + 2, temp_y + 130, "fName", c_white, 0, 1000, 1, true, drawAlpha, "Alt " + string(alt_cur+1) + ": " + alt_name[alt_cur]);

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