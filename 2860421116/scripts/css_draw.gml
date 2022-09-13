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
	sound_play(asset_get("sfx_blow_medium2"),false,noone,.8,1.1)
	introtime = 0
	drawtime2 = -1
}

if ("prev_alt" in self && prev_alt != alt){
     drawtime = 0
     drawtime2 = 0
}


drawtime += 1 

if drawtime2 >= 0 {
	drawtime2 ++
}

introtime ++


prev_alt = alt;


     
if drawing > 3 {
    drawing = 0
}


//define the palette names
var palette_names = [
  "Justin, a guy",
  "guy",
  "guy",
  "guy",
  "the man behind",
  "gay",
  "girl",
  "gender?",
  "brazilian",
];
var alt = get_player_color(player);
//draw the alt name and number. maybe not positioned well i didnt check

sprite_change_offset("dash", 0, 0);





if drawtime2 < 120 && drawtime2 > 0{
draw_sprite_ext(sprite_get("dash"),drawtime/6,temp_x-10,temp_y+54 - floor(drawtime2/2),1,1,0,-1,2 - drawtime2/60);
	
draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime2/2),string(palette_names[alt]));
    
}



if drawtime2 > 120 && drawtime2 < 140 && drawtime% 2 == 0 {
draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime2/2),string(palette_names[alt]));
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
    
    if drawtime < 4 {
        draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
        draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
        draw_sprite_ext(sprite_get("charselectflash"),0,temp_x-2,temp_y-2,2,2,0,-1,1);    
    }
    
}



init_shader();