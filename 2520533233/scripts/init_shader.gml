//init shader
if("hue_spd" in self){
hue_offset += hue_spd;
hue_offset = hue_offset % 255;
var color_rgb = make_color_rgb(255, 0, 0);
var hue = (color_get_hue(color_rgb) + hue_offset) mod 255;
var color_hsv = make_color_hsv(hue, color_get_saturation(color_rgb), 
                                color_get_value(color_rgb));

set_character_color_slot(7, color_get_red(color_hsv), 
                        color_get_green(color_hsv), color_get_blue(color_hsv));
//set_character_color_slot(4, color_get_red(color_hsv), 
//                        color_get_green(color_hsv), color_get_blue(color_hsv));
//set_character_color_slot(5, color_get_red(color_hsv), 
//                        color_get_green(color_hsv), color_get_blue(color_hsv));
//corrections to default palette
if(get_player_color(player) == 0){
    set_character_color_slot(0, 0, 0, 10);
    set_character_color_slot(6, 10, 8, 0);
    set_character_color_slot(2, 26, 38, 128);
    set_character_color_slot(3, 106, 0, 0);
} else if (install_theme > 100 and dragon_install){
    
    if(!skin_alt){
        if(install_theme == 122){
            set_character_color_slot(4, color_get_red(rainbow_color_slow), color_get_green(rainbow_color_slow), color_get_blue(rainbow_color_slow));
            set_character_color_slot(6, color_get_red(rainbow_color_slow), color_get_green(rainbow_color_slow), color_get_blue(rainbow_color_slow), .5);
            set_character_color_slot(0, color_get_red(rainbow_color_slow2), color_get_green(rainbow_color_slow2), color_get_blue(rainbow_color_slow2));
        } else {
            set_character_color_slot(4, color_get_red(rainbow_pastel), color_get_green(rainbow_pastel), color_get_blue(rainbow_pastel));
            set_character_color_slot(1, color_get_red(rainbow_dark), color_get_green(rainbow_dark), color_get_blue(rainbow_dark), .5);
            set_character_color_slot(0, color_get_red(rainbow_dark2), color_get_green(rainbow_dark2), color_get_blue(rainbow_dark2));
            set_character_color_slot(2, color_get_red(rainbow_color_slow2), color_get_green(rainbow_color_slow2), color_get_blue(rainbow_color_slow2));
        }
    } else {
        if(install_theme == 420){
            set_character_color_slot(0, 224, 94, 145 ); //Hat
            set_character_color_slot(1, 255, 186, 223 ); //Clothes
            set_character_color_slot(2, 232, 56, 109 ); //Skirt
            set_character_color_slot(3, 130, 0, 50 ); //Bow Front
            set_character_color_slot(4, 255, 173, 220 ); //Hair
            set_character_color_slot(5, 255, 112, 221 ); //Eyes
            set_character_color_slot(6, 255, 107, 151 ); //Detailing
            set_character_color_slot(7, 0, 255, 0 ); //Rainbow
        } else {
            set_character_color_slot(6, color_get_red(rainbow_color_slow2), color_get_green(rainbow_color_slow2), color_get_blue(rainbow_color_slow2));
            set_character_color_slot(5, color_get_red(rainbow_color_slow2), color_get_green(rainbow_color_slow2), color_get_blue(rainbow_color_slow2));
        }
    }
}



if(dragon_install) outline_color = rainbow_rgb;

if(end_dragon_install){
    outline_color = [0, 0, 0];
    end_dragon_install = !end_dragon_install;
}
}
animate_portrait();
#define animate_portrait()
if (object_index == asset_get("draw_result_screen"))
{
    ///PARAMETERS:
    //SpriteName - [string] the name of the sprite
    //StartUp - the frames before the animation starts
    //AnimSpeed - frames per second the animation will go at
    //IdleSpriteName - [string] the name of the idle animation sprite
    //IdleStartUp - the frames before the animation transitions 
    //IdleSpeed - frames per second the idle animation will go at
    
    //initializing variables
    if !("victory_time" in self)
    {
        victory_time = 0;
        hue_offset = 0;
        hue_spd = 1;
    } else {
        victory_time++;
        hue_offset += hue_spd;
        hue_offset = hue_offset % 255;
        var color_rgb = make_color_rgb(255, 0, 0);
        var hue = (color_get_hue(color_rgb) + hue_offset) mod 255;
        var color_hsv = make_color_hsv(hue, color_get_saturation(color_rgb), 
                                        color_get_value(color_rgb));
        set_character_color_slot(7, color_get_red(color_hsv), 
                                color_get_green(color_hsv), color_get_blue(color_hsv));
    }
    

}