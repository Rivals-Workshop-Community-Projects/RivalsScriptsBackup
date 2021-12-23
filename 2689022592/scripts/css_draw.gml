if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);

if "prev_alt" not in self {
    prev_alt = alt
}

if prev_alt != alt {
    sound_play(asset_get("sfx_orcane_fspecial"),false,noone,1,1.2 + alt/10)
}

prev_alt = alt;


//define the palette names
var palette_names = [
  "Tengia",
  "Gold Fool",
  "Vlad",
  "Soul Stealer",
  "Darkness",
  "Void",
  "Popstar",
  "Xeno",
  "Crystar",
  "Yort",
  "Clown",    
  "Melted"
  "Kumak",    
  "BLW"
  "Lich"
  "Branded"
  "Guperman"
  "Lethal"
  "They/Them btw"
];

shader_end()
var alt = get_player_color(player);
//draw the alt name and number. maybe not positioned well i didnt check
draw_debug_text(floor(x)+14,floor(y)+110 - alt*3,string(palette_names[alt]));

