if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);

var charuuid = string(sprite_get("idle"));
if ("css_char" not in self || css_char != charuuid) {
    css_char = charuuid;
    sound_stop(asset_get("sfx_shovel_hit_med1"))
    sound_stop(asset_get("sfx_spin"))
                sound_play(asset_get("sfx_shovel_hit_med1"),false, noone, 1, .7)
                sound_play(asset_get("sfx_spin"),false, noone, .8, .5)
	
}


if "prev_alt" not in self {
    prev_alt = alt
}

if prev_alt != alt {
    sound_play(asset_get("sfx_shovel_hit_light1"),false,noone,.8,1.2 + alt/10)
}

prev_alt = alt;


//define the palette names
var palette_names = [
  "Ne0",
  "Nova",
  "Owen",
  "Natsumi",
  "Astra",
  "Bluey",
  "Void Power",
  "10",
  "7-11",
  "LGBT",
  "NB",
  "BLW",    
  "Pause Ahead"
  "Megaman"
  "[The World]"
];

shader_end()
var alt = get_player_color(player);
//draw the alt name and number. maybe not positioned well i didnt check
draw_debug_text(floor(x)+14,floor(y)+110 - floor(alt*2.5),string(palette_names[alt]));

