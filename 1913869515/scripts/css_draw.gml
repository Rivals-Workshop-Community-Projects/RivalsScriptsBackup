if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);

draw_sprite_ext(sprite_get("charselectbg"),0,temp_x-2,temp_y-2,2,2,0,-1,1);

if ("prev_alt" not in self){
drawtime = 0
drawing = 0


}
    
if ("prev_alt" in self && prev_alt != alt){
     drawtime = 0
}


if alt == 5 {
  draw_sprite_ext(sprite_get("charselectsakura"),drawtime / 1,temp_x-2,temp_y-2,2,2,0,-1,1);
}

drawtime += 1 


prev_alt = alt;
draw_sprite_ext(sprite_get("charselectver"),0,temp_x-2,temp_y-2,2,2,0,-1,1);

if alt == 1 {
    if drawtime == 1 {
        sound_play(sound_get("tauntV"))
    }
  draw_sprite_ext(sprite_get("charselect2"),drawtime / 5,temp_x-2,temp_y-2,2,2,0,-1,1);
}

if alt == 4 {
    if drawtime == 1 {
        sound_play(sound_get("tauntDi"))
    }
}

if alt == 8 {
    if drawtime == 1 {
    sound_play(asset_get("sfx_diamond_collect"))
    sound_play(asset_get("sfx_boss_vortex_end"),false,noone,2)
    }
    draw_sprite_ext(sprite_get("tflag"),0,temp_x-2,temp_y-2,2,2,0,-1,1);    
    if drawtime <= 20 && drawtime % 3 == 0 { 
          draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
    }
}

if alt == 7 {
    if drawtime == 1 {
        sound_play(sound_get("bruh"))
    }
    
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


if alt == 5 {
  draw_sprite_ext(sprite_get("charselectsakura2"),drawtime / 2,temp_x-2,temp_y-2,2,2,0,-1,1);
}


//define the palette names
var palette_names = [
  "Midorija's Miko",
  "Half Devil",
  "Watermelon",
  "G7",
  "Menacing Vocal",
  "Sakura",
  "Golden",
  "Bruh sfx on kills",
  "Equaliza",
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