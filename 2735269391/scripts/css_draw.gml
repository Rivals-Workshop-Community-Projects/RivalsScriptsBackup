if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);

var charuuid = string(sprite_get("idle"));
if ("css_char" not in self || css_char != charuuid) {
    css_char = charuuid;
    sound_stop(asset_get("sfx_buzzsaw_hit"))
    sound_stop(asset_get("sfx_ori_energyhit_medium"))
                sound_play(asset_get("sfx_buzzsaw_hit"),false, noone, 1, 1)
                sound_play(asset_get("sfx_ori_energyhit_medium"),false, noone, .8, .8)
	
}


if "prev_alt" not in self {
    prev_alt = alt
    drawtime = 0
}

if prev_alt != alt {
    drawtime = 0
    sound_play(asset_get("sfx_buzzsaw_hit"),false,noone,1,1.2 + alt/10)
}

prev_alt = alt;


if alt == 11 {
 drawtime ++
   hue = (drawtime%70)*4
   
    	color_rgb=make_color_rgb(255, 100, 50);
    		hue2=(color_get_hue(color_rgb)+hue) mod 255;
    			color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 

    set_character_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_article_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
  
}

//define the palette names
var palette_names = [
  "Sleven",
  "Tenth",
  "Null",
  "Cake",
  "Basecast",
  "White Cat",
  "Delta",
  "Mirror",
  "Hat",
  "unHat",
  "HYPERDEATH",
  "HYPERDEATH + rainbow fx",
  "Holy Orders"
  "BLW"
  "Diamond Armor"
];

shader_end()
var alt = get_player_color(player);
//draw the alt name and number. maybe not positioned well i didnt check
draw_debug_text(floor(x)+14,floor(y)+110 - floor(alt*2),string(palette_names[alt]));

