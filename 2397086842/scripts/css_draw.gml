if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);
var charuuid = string(sprite_get("idle"));

draw_sprite_ext(sprite_get("charselectbg"),0,temp_x-2,temp_y-2,2,2,0,-1,1);

if ("css_char" not in self || css_char != charuuid) {
drawtime = 0
drawing = 0
introtime = 0
    css_char = charuuid;

}

    
if ("prev_alt" in self && prev_alt != alt){
     drawtime = 0
}



drawtime += 1 
introtime ++

prev_alt = alt;

draw_sprite_ext(sprite_get("charselectEX"),min(41, introtime/4),temp_x-2,temp_y-2,2,2,0,-1,1);

switch introtime/4 {
     case 1 :
     sound_play(asset_get("sfx_boss_vortex_end"),false,noone,1,0.6)
     sound_play(asset_get("sfx_spin"),false,noone,1,0.6)
     break; 
     
     case 8 :
     sound_play(asset_get("sfx_swipe_heavy2"),false,noone,1,1)
     sound_play(asset_get("sfx_absa_dashup"),false,noone,1,1.2)
     break; 
    
     case 9 :
     sound_play(asset_get("sfx_swipe_medium2"),false,noone,1,1)
     break; 

     case 11 :
     sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,1)
     sound_play(asset_get("sfx_absa_boltcloud"),false,noone,1,1)
     sound_play(asset_get("sfx_absa_kickhit"),false,noone,1,1)
     sound_play(sound_get("bathit"),false,noone,1,.8)
     sound_play(sound_get("b3"),false,noone,.7,1)
     break; 
     
     case 17 :
      sound_play(asset_get("sfx_absa_dashup"),false,noone,1,1.2)
      sound_play(sound_get("b1"),false,noone,.6,1)
     break; 
     
     case 19 :
      sound_play(asset_get("sfx_absa_dashdown"),false,noone,1,1.2)
      sound_play(sound_get("b2"),false,noone,.6,1)
     break; 
     
     case 21 :
      sound_play(asset_get("sfx_absa_dashup"),false,noone,1,1.2)
      sound_play(sound_get("b1"),false,noone,.6,1)
     break; 
     
     case 22 :
      sound_play(asset_get("sfx_absa_dashdown"),false,noone,1,1.2)
      sound_play(asset_get("sfx_spin"),false,noone,1,0.8)
      sound_play(sound_get("b2"),false,noone,.6,1)
     break; 
     
     case 27 :
       sound_play(sound_get("sage"),false,noone,.7,1)
     break; 
     
      case 28 :
       sound_play(sound_get("shockready"),false,noone,.6,1)
     break; 
     
     case 37 :
     sound_play(asset_get("sfx_swipe_heavy1"),false,noone,1,1)
     break;
     
     case 38 :
     sound_play(asset_get("sfx_spin"),false,noone,1,1)
     break; 
     
}

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
  "Personalized",
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
if alt > 0 {
if drawtime < 120 {
draw_sprite_ext(sprite_get("idle"),drawtime/5,temp_x-10,temp_y+54 - floor(drawtime/2),1,1,0,-1,2 - drawtime/60);
draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
}

if drawtime > 120 && drawtime < 140 && drawtime% 2 == 0 {
draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
}

sprite_change_offset("idle", 0, 0);
}

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