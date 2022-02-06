if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);

var charuuid = string(sprite_get("idle"));
if ("css_char" not in self || css_char != charuuid) {
    css_char = charuuid;
    sound_stop(sound_get("finish"))
    sound_stop(sound_get("RI"))    
               sound_play(sound_get("finish"),false,noone,.7,.7)	
               sound_play(sound_get("finish"),false,noone,1,1.3)	
               sound_play(sound_get("RI"),false,noone,.6,.6)	
}


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
draw_sprite_ext(sprite_get("charselect2"),0,temp_x-2,temp_y-2,2,2,0,-1,1);



if alt == 7 {
    if drawtime == 1 {
        //sound_play(sound_get("Balesi"))
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


//define the palette names
var palette_names = [
  "Xenovessel",
  "Zetta",
  "Acid Rainbow",
  "Hornet",
  "Hollow Vessel",
  "Sakura",
  "Deepsea",
  "nonsense tournament winner alt",
  "Equaliza",
  "Riptide",
  "The Hollower",
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