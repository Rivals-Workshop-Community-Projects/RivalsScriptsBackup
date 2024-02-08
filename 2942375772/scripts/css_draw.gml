//this is up here to prevent the TAS alt outline from drawing over the text lol
switch (get_player_color(player)){
    case 21:
        draw_sprite(sprite_get("css_icon_riptide"), 0, x + 176, y + 110);
    break;
    case 22:
        draw_sprite(sprite_get("css_icon_genny"), 0, x + 176, y + 110);
    break;
    case 23:
        draw_sprite_ext(sprite_get("charselect_hopes"), 1, x + 8,y + 8, 2, 2, 0, -1, 1);
        draw_sprite(sprite_get("css_icon_hopes"), 0, x + 176, y + 110);
    break;
}

var temp_x = floor(x + 8);
var temp_y = floor(y + 9);
var max_timer = 30;

if "current_alt" not in self {
    current_alt = 0;
    timer = max_timer;
}

var alt_name = [
    "Marti",
    "Blue",
    "Red",
    "Green",
    "Black and White",
    "Purple",
    "Dusty",
    "Grim Reaper",
    "Plessie",
    "Jockington",
    "Eidolon",
    "Elliana",
    "Charlie",
    "King",
    "Mech",
    "Rope Snake",
    "Amaya",
    "Najarala",
    "Dalamadur",
    "BLW",
    "FTL",
    "Riptide",
    "Genesis",
    "Hopes & Dreams",
    "Unity",
    ]

var current_player = get_player_color(player);

if current_alt != current_player {
    timer = 0;
    current_alt = current_player
}

draw_debug_text(temp_x + 10 + floor(ease_quartOut(40, 0, timer, max_timer)), temp_y+120,alt_name[current_player])
timer = min(max_timer, timer + 1);

draw_sprite(sprite_get("marti-icon"), 0, temp_x + 150, y+ 34)

//hopes & dreams
if (!variable_instance_exists(id, "hue_offset")){
        hue_offset = 0;
}

    hue_speed = 0.5;
    hue_offset+=hue_speed;
    hue_offset=hue_offset mod 255;
    
if (get_player_color(player) == 23){
    //Run once
    hue_offset+=hue_speed;
    hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

    //Run for each color slot you're changing. If you're using different hues (EG Liz shading), make sure they're actually different - The colors still use the original colors saturation/value.
    rainbow_alt();
    set_color_profile_slot( 23, 3, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //Set color alt/slot to the new color.

    //Repeat for each color slot.
    rainbow_alt();
    set_color_profile_slot( 23, 4, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //Set color alt/slot to the new color.
    
    init_shader();
}

#define rainbow_alt()

color_rgb = make_color_rgb (48, 147, 230 );
hue = (color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
