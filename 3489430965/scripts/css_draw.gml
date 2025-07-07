var charuuid = string(sprite_get("idle"));
if ("css_char" not in self || css_char != charuuid) {
    css_char = charuuid;
    sound_play(sound_get("chicken_jockey"));
}

//Here's how the Alt names work
var temp_x = x + 8;
var temp_y = y + 8;

patch_ver = "1.0";
patch_day = "";
patch_month = "";

var drawAlpha = 1;
var num_alts = 16;
var alt_cur = get_player_color(player);

var doNotInitShader = "alt_name" in self; // check if running for the first time

//Alt name init. var doesn't work with arrays lol
alt_name[0]  = "I... Am Steve";
alt_name[1]  = "I... Am Alex";
alt_name[2]  = "Your Head is Huge";
alt_name[3]  = "VINDICATORS...";
alt_name[4]  = "Zumbie";
alt_name[5]  = "Desert Zumbie";
alt_name[6]  = "Ocean Zumbie";
alt_name[7]  = "William";
alt_name[8]  = "Natalie";
alt_name[9]  = "Dawn";
alt_name[10] = "Garrett";
alt_name[11] = "Peaches";
alt_name[12] = "Merry Christmas";
alt_name[13] = "Holy Crap Lois!";
alt_name[14] = "Swing Low!";
alt_name[15] = "Sexy";

if(!doNotInitShader){
    init_shader(); // makes the shader update when you return to the CSS (don't know why the game is coded so that this necessary)
}

//sprite_change_offset("charselect", 51, 0);
//draw_sprite_ext(sprite_get("charselect"), 0, temp_x+102, temp_y, 2, 2, 0, c_white, 1);

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