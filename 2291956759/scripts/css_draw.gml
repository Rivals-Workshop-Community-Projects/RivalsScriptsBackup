if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);
var charuuid = string(sprite_get("idle"));

if ("css_char" not in self || css_char != charuuid) {
drawtime = 0
drawing = 1
    css_char = charuuid;
    sound_play(sound_get("RI"),false,noone,1,1)
	sound_play(asset_get("sfx_waterhit_heavy2"),false,noone,1,1)
	sound_play(asset_get("sfx_waterwarp_start"),false,noone,1.2,.4)
	sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1,.4)
}

if ("prev_alt" in self && prev_alt != alt){
     drawtime = 0
     sound_play(asset_get("sfx_waterhit_medium"),false,noone,1,1)
}

if ("prev_alt" not in self){
drawtime = 0
drawing = 1
}
    
if ("prev_alt" in self && prev_alt != alt){
     drawing = random_func(4, 4, true)
     drawtime = 0
}

drawtime += 1 


prev_alt = alt;


     
if drawing > 3 {
    drawing = 0
}

if alt == 14 && drawtime == 1{
  sound_play(sound_get("drip")) 
}



//define the palette names
var palette_names = [
  "Calligrapher of Fate",
  "Calligrapher of Star",
  "Calligrapher of Song",
  "Calligrapher of Gravity",
  "Calligrapher of Crystal",
  "Drawer of Motivation",
  "Gimmick is Stun",
  "not-Melee Sai",
  "Paint Tool Sai",
  "Dab from TimeRP-",
  "Cmon!",
  "Grab",
  "Daisho no Hebi",
  "w a t e r m e l o n",
  "Sai Drip",
  "Susanyes",
  "BLW", 
  "Batx2", 
  "Parker", 
  "Look, a star.", 
  "300IQ", 
  "Another anime char idk who", 
  "Three Wisps", 
  "Still can't kill", 
  "The wild from breath", 
  "Love the character.", 
];
var alt = get_player_color(player);
//draw the alt name and number. maybe not positioned well i didnt check
if drawtime < 120 {
draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
    
}

if drawtime > 120 && drawtime < 140 && drawtime% 2 == 0 {
draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
}

sprite_change_offset("idle", 0, 0);

if drawtime < 15 {
    draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
    
    if drawtime < 12 {
         draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
    }
    
    if drawtime < 9 {
        draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);    
    }
    
    if drawtime < 6 {
        draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);   
    }
    
    if drawtime < 3 {
        draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);    
    }
    
}


draw_sprite_ext(sprite_get("style"),0,temp_x-2,temp_y+30,2,2,0,-1,1-(drawtime/60) );
