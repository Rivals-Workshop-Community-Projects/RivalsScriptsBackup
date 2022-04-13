if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);
var charuuid = string(sprite_get("idle"));

if ("css_char" not in self || css_char != charuuid) {
drawtime = 0
drawing = 1
text = 0
    css_char = charuuid;
    sound_play(sound_get("gigachad"),false,noone,1,1)
}


if ("prev_alt" not in self){
drawtime = 0
drawing = 0
}
    
if ("prev_alt" in self && prev_alt != alt){
     drawtime = 0
     text += 1
     sound_stop(sound_get("gigachad"))
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

if alt == 11 {
    if drawtime == 1 {
    sound_play(sound_get("drip"))
    }

}
if alt == 15 {
    if drawtime == 1 {
    sound_play(sound_get("nanomachine"))
    }

}


//define the palette names
var palette_names = [
    
  "Giga Chad",
  "Chad Thunder",
  "Chad Yes",
  "Chad Win",
  "Chad Anti",
  "Chad Average",
  "Chad Steve",
  "Chad Guperman",
  "Chad Void",
  "Chad Ranger",
  "Chad BLW",
  "Chad Drip",
  "Chad Angry",
  "Chad Dorf",
  "Chad Jojo",
  "Chad Senator",
];

var alt = get_player_color(player);
//draw the alt name and number. maybe not positioned well i didnt check
if text == 0 draw_sprite_ext(sprite_get("brawlfg"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
if text != 0 {
    
if drawtime < 120 {
draw_sprite_ext(sprite_get("extra_1"),23,temp_x-10,temp_y+24 - floor(drawtime/2),1,1,0,-1,2 - drawtime/60);
draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
}

if drawtime > 120 && drawtime < 140 && drawtime% 2 == 0 {
draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
}

sprite_change_offset("extra_1", 0, 0);
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