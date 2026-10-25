//init_shader
var cur_alt = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

switch (cur_alt) {
    case 0: //default. colormapping shenanigans
		set_character_color_slot(5, 251, 250, 252, 1);
		set_character_color_slot(6, 251, 250, 252, 1);
    break;
    case 16: //reigen
        set_character_color_shading(5, 0.5);
    break;
    
    case 9: //krish
    	set_character_color_shading(0, 0.5);
    break;
    case 10: //sussy
    	set_character_color_shading(2, 0.75);
    break;
    case 11: //no l
    	set_character_color_shading(2, 0.5);
    break;
    
    case 14: //steven
    	set_character_color_shading(5, 0.5);
    break;
    
    case 17: //monika
    case 21: //gg!underfell
        set_character_color_shading(0, 0.8);
    break;
    
    case 18: //intro cutscene
    case 19: //overworld
    case 20: //battle
    case 27: //goner
        for(i = 0; i < 7; i++){
            set_character_color_shading(i, 0);
        }
    break;
}
if (object_index != asset_get("draw_result_screen")) {
	//sound_stop(sound_get("sfx_her_chase"));
    sound_stop(sound_get("dogsong"));
    sound_stop(sound_get("mus_smile"));
}

sansEyeFlash();
#define sansEyeFlash()

#macro SOUL_RED 0
#macro SOUL_PATIENCE 1
#macro SOUL_BRAVERY 2
#macro SOUL_INTEGRITY 3
#macro SOUL_PERSERVERANCE 4
#macro SOUL_KINDNESS 5
#macro SOUL_JUSTICE 6

var primary_col = /*#*/$F2FF84;
var secondary_col = /*#*/$40FFFF;

var friend_primary = /*#*/$C9AEFF;
var friend_secondary = /*#*/$00F2FF;

//soul colors

var soul_colors = [];
soul_colors[SOUL_RED] = /*#*/$4040FF;
//soul_colors[SOUL_RED] = #FF0000)
soul_colors[SOUL_PATIENCE] = /*#*/$F2FF84;
//soul_colors[SOUL_PATIENCE] = #42FCFF)
soul_colors[SOUL_BRAVERY] = /*#*/$40B9F9;
//soul_colors[SOUL_BRAVERY] = #FCA600)
soul_colors[SOUL_INTEGRITY] = /*#*/$FF7142;
//soul_colors[SOUL_INTEGRITY] = #003CFF)
soul_colors[SOUL_PERSERVERANCE] = /*#*/$D86ED5;
//soul_colors[SOUL_PERSERVERANCE] = #D535D9)
soul_colors[SOUL_KINDNESS] = /*#*/$31BF31;
//soul_colors[SOUL_KINDNESS] = #00C000)
soul_colors[SOUL_JUSTICE] = /*#*/$42FFFF;
//soul_colors[SOUL_JUSTICE] = #FFFF00)

/*
for (var i = 0; i < array_length_1d(soul_colors)-1; i++){
    soul_colors[i] = make_color_hsv(
    color_get_hue(soul_colors[i]),
    color_get_saturation(soul_colors[i])-56,
    color_get_value(soul_colors[i]))
}
*/
var current_alt = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

switch (current_alt) {
    case 1: //papyrus
        primary_col = soul_colors[SOUL_BRAVERY];
        secondary_col = soul_colors[SOUL_KINDNESS];
    break;
    
    case 4: //undyne
        primary_col = soul_colors[SOUL_KINDNESS];
        secondary_col = soul_colors[SOUL_PERSERVERANCE];
    break;
    
    case 6: //driving in my car
    	primary_col = /*#*/$40A0FF;
    	secondary_col = /*#*/$FFA914;
    break;
    
    case 9: //kris
    case 10: //susie
    case 11: //no l
    	primary_col = friend_primary;
    	secondary_col = friend_secondary;
    break; //evil fucked up cat that i hate
    
    case 7: //frisk
        primary_col = soul_colors[SOUL_RED];
        secondary_col = soul_colors[SOUL_KINDNESS];
    break;
    case 8: //chara
        primary_col = soul_colors[SOUL_RED];
        secondary_col = soul_colors[SOUL_PERSERVERANCE];
    break;
    case 17: //monika
    	primary_col = /*#*/$43CA7D;
    	secondary_col = /*#*/$B5A7FA;
    break;
    case 25: //gg!underfell
        primary_col = soul_colors[SOUL_RED];
        secondary_col = soul_colors[SOUL_BRAVERY];
    break;
}

var framep = 6; //how many frames it stays on each color before going to the next

if ((get_gameplay_time() mod (framep*2)) > (framep-1)) { //idk
   // print_debug("fuck me")
    set_character_color_slot(7, 
    color_get_red(primary_col), 
    color_get_green(primary_col), 
    color_get_blue(primary_col), 1); 
} else {
   // print_debug("please")
    set_character_color_slot(7, 
    color_get_red(secondary_col), 
    color_get_green(secondary_col), 
    color_get_blue(secondary_col), 1); 
}

#define bgrConvert(hex)
//this function is stupid as hell it only exists because i didnt know to use # for rgb hex codes and not $
return make_color_rgb(color_get_blue(hex), color_get_green(hex), color_get_red(hex));