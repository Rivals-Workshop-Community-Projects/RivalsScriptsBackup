if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);

if ("prev_alt" not in self){
drawtime = 0
drawing = 1
introanim = 0
}
    
if ("prev_alt" in self && prev_alt != alt){
     drawing = random_func(4, 4, true)
     drawtime = 0
     introanim = random_func(1,4,true)
}

drawtime += 1 


prev_alt = alt;

if alt == 10 && drawtime == 1{
    sound_play(sound_get("wiss"),false,noone,0.6,0.9 + random_func(1,3,true)/10)    
}

     
if drawing > 3 {
    drawing = 0
}





//define the palette names
var palette_names = [
  "Mr.Red", 
  "Alfa",
  "Yoyo",
  "001", 
  "Fry",
  "Mr.Green",
  "VoidFox",
  "Onibi",
  "Barr",
  "Xiao Xiao",
  "Classic (Bunny hood sfx)", 
];
var alt = get_player_color(player);
//draw the alt name and number. maybe not positioned well i didnt check
if drawtime < 120 {
    switch introanim {
        case 0:
        draw_sprite_ext(sprite_get("fstrong"),drawtime/3,temp_x,temp_y+34 - floor(drawtime/2),1,1,0,-1,2 - drawtime/60);
        break;
        
        case 1:
        draw_sprite_ext(sprite_get("dstrong"),drawtime/3,temp_x,temp_y+34 - floor(drawtime/2),1,1,0,-1,2 - drawtime/60);
        break;
        
        case 2:
        draw_sprite_ext(sprite_get("jab"),drawtime/3,temp_x,temp_y+34 - floor(drawtime/2),1,1,0,-1,2 - drawtime/60);
        break;
        
        case 3:
        draw_sprite_ext(sprite_get("ustrong"),drawtime/3,temp_x,temp_y+34 - floor(drawtime/2),1,1,0,-1,2 - drawtime/60);
        break;
    }

draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));

sprite_change_offset("fstrong", 0, 0);
sprite_change_offset("ustrong", 0, 0);
sprite_change_offset("dstrong", 0, 0);
sprite_change_offset("jab", 0, 0);
}

if drawtime > 120 && drawtime < 140 && drawtime% 2 == 0 {
draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
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