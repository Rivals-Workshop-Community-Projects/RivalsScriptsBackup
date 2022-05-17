if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);


if ("prev_alt" not in self){
drawtime = 0
drawing = 0
}
    
if ("prev_alt" in self && prev_alt != alt){
     drawtime = 0
}



drawtime += 1 


prev_alt = alt;


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

if alt == 12 {
    if drawtime == 1 {
    sound_play(asset_get("sfx_diamond_collect"))
    sound_play(asset_get("sfx_boss_vortex_end"),false,noone,2)
    }
    draw_sprite_ext(sprite_get("tflag"),0,temp_x-2,temp_y-2,2,2,0,-1,1);    
    if drawtime <= 20 && drawtime % 3 == 0 { 
          draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
    }
}

if alt == 13 {
    if drawtime == 1 {
     sound_play(asset_get("sfx_diamond_collect"))
     sound_play(asset_get("sfx_waterhit_heavy"),false,noone,1.2)
    }
    sprite_change_offset("berryball3", 0, 0);
        draw_sprite_ext(sprite_get("berryball3"),drawtime/5,temp_x-12,temp_y+18,1,1,0,-1,1);
}
    
if alt == 16 {
    if drawtime == 1 {
     sound_play(asset_get("sfx_diamond_collect"))
     sound_play(sound_get("death"),false,noone,1)
    }
    sprite_change_offset("yyb3", 0, 0);
        draw_sprite_ext(sprite_get("yyb3"),drawtime/5,temp_x-12,temp_y+18,1,1,0,-1,1);
}

if alt == 20 {
    if drawtime == 1 {
     sound_play(asset_get("sfx_diamond_collect"))
     sound_play(asset_get("sfx_blow_heavy2"),false,noone,1)
    }
    sprite_change_offset("dinonug2", 0, 0);
        draw_sprite_ext(sprite_get("dinonug2"),drawtime/5,temp_x-12,temp_y+18,1,1,0,-1,1);
}

if alt == 21 {
    if drawtime == 1 {
     sound_play(asset_get("sfx_diamond_collect"))
     sound_play(sound_get("Lycahit"),false,noone,1.2,1)
    }
    sprite_change_offset("wisp2", 0, 0);
        draw_sprite_ext(sprite_get("wisp2"),drawtime/5,temp_x-12,temp_y+18,1,1,0,-1,1);
}

if alt == 22 {
    if drawtime == 1 {
     sound_play(asset_get("sfx_diamond_collect"))
      sound_play(sound_get("vineboom"),false,noone, 1)  
    }
    sprite_change_offset("rock2", 0, 0);
        draw_sprite_ext(sprite_get("rock2"),drawtime/5,temp_x-12,temp_y+22,1,1,0,-1,1);
}
//define the palette names
var palette_names = [
    
  "Bat Bat",
  "Void Power",
  "Stun Cat",
  "Stary",
  "Place Holder Alt",
  "Ran Ran Ru",
  "Deltadude", 
  "Circus Goat",   
  "Hey Spar, Love the character",     
  "Lum",   
  "Air Better",   
  "Tak Tak",  
  "Equaliza",
  "Blue Berry Bat Bat", 
  "Stylish Ghost",   
  "Hermit of Senkai",  
  "Miko of Paradise",
  "Flipping Youkai",   
  "Abyss Apprentice",  
   "Riptide",   
   "PlasDinos",  
   "Flickering Spark",  
   "TAG",  
   "Mer",  
];

var alt = get_player_color(player);
//draw the alt name and number. maybe not positioned well i didnt check
if drawtime < 120 {
draw_sprite_ext(sprite_get("idle"),drawtime/5,temp_x-10,temp_y+54 - floor(drawtime/2),1,1,0,-1,2 - drawtime/60);
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