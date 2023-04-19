//borrowed from gigachad, hello sai//

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
    sound_play(sound_get("start"),false,noone,1,1)
}


if ("prev_alt" not in self){
drawtime = 0
drawing = 0
}
    
if ("prev_alt" in self && prev_alt != alt){
     drawtime = 0
     text += 1
     sound_stop(sound_get("optimus prime"))
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

if alt == 14 {
    if drawtime == 1 {
    sound_play(sound_get("conffet"))
    }

}

if alt == 13 {
    if drawtime == 1 {
    sound_play(sound_get("sorna"))
    }

}
var current_alt = get_player_color(player);

switch(current_alt) {    
    case 10:
        draw_sprite_ext(sprite_get("css_icons"), 1, temp_x + 162, temp_y + 96, 2, 2, 0, c_white, 1);
    break;
    case 11:
        draw_sprite_ext(sprite_get("css_icons"), 1, temp_x + 162, temp_y + 96, 2, 2, 0, c_white, 1);
    break;
    case 13:
        draw_sprite_ext(sprite_get("css_icons"), 0, temp_x + 162, temp_y + 96, 2, 2, 0, c_white, 1);
    break;
    case 14:
        draw_sprite_ext(sprite_get("css_icons"), 2, temp_x + 162, temp_y + 96, 2, 2, 0, c_white, 1);
    break;
}

//define the palette names
var palette_names = [
  "Kaptain K. Rool",
  "Kloak",
  "Kannon",
  "Klampon",
  "Krook",
  "Klinger",
  "Kackle",
  "Kutlass",
  "Mr. X",
  "Screech",
  "Panther King",
  "Gruntilda",
  " ",
  "The Beast Left On Sorna",
  "Birthday Special",
];

var alt = get_player_color(player);
//draw the alt name and number. maybe not positioned well i didnt check
if text == 0 draw_sprite_ext(sprite_get("brawlfg"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
if text != 0 {

if alt == 14 {
    if drawtime < 120 {
    draw_sprite_ext(sprite_get("conffet"),23,temp_x-10,temp_y+24 - floor(drawtime/2),1,1,0,-1,2 - drawtime/60);
    draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
    }

}

if alt == 12 {
    if drawtime < 120 {
    draw_sprite_ext(sprite_get("unveiled"),23,temp_x-10,temp_y+24 - floor(drawtime/2),1,1,0,-1,2 - drawtime/60);
    draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
    }

}

if drawtime < 120 {
draw_sprite_ext(sprite_get("extra_1"),23,temp_x-10,temp_y+24 - floor(drawtime/2),1,1,0,-1,2 - drawtime/60);
draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
}

if drawtime > 120 && drawtime < 140 && drawtime% 2 == 0 {
draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
}

sprite_change_offset("extra_1", -30, 700);


sprite_change_offset("unveiled", -18, -104);
sprite_change_offset("conffet", 0, 450);
}