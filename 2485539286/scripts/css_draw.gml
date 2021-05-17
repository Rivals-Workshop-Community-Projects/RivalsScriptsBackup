if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);

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


 gpu_set_blendmode(bm_add);
 draw_sprite_ext(sprite_get("charselectbg"),drawtime/4,temp_x-2,temp_y-2,2,2,0,-1,0.2);
 gpu_set_blendmode(bm_normal);
 
if alt == 0 {
  draw_sprite_ext(sprite_get("charselect0"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
} else {
  draw_sprite_ext(sprite_get("charselect0"),1,temp_x-2,temp_y-2,2,2,0,-1,1);
}


  
if drawtime % 20 == 0 or drawtime % 50 < 1 {
  draw_sprite_ext(sprite_get("charselect1"),0,temp_x-2,temp_y-2,2,2,0,-1,0.6);
}

if drawtime % 30 < 20  {
  draw_sprite_ext(sprite_get("charselect1"),0,temp_x-2,temp_y-2,2,2,0,-1, (drawtime % 30)/30);
}

if drawtime % 30 >= 20 {
  draw_sprite_ext(sprite_get("charselect1"),0,temp_x-2,temp_y-2,2,2,0,-1, 1 - (drawtime % 30)/30);
}


if drawtime % 20 == 10 or drawtime % 40 < 3 {
  draw_sprite_ext(sprite_get("charselect1"),1,temp_x-2,temp_y-2,2,2,0,-1,1);
}

if drawtime % 4 == 0 {
draw_sprite_ext(sprite_get("charselect1"),1,temp_x-4 + random_func(1,6,true),temp_y-4 + random_func(2,6,true),2,2,0,-1,0.6);
}

if drawtime % 5 == 0 {
draw_sprite_ext(sprite_get("charselect1"),0,temp_x-4 + random_func(1,6,true),temp_y-4 + random_func(2,6,true),2,2,0,-1,0.6);
}

if drawtime % 20 < 10 {
  draw_sprite_ext(sprite_get("charselect1"),1,temp_x-2,temp_y-2,2,2,0,-1, (drawtime % 20)/20);
}



gpu_set_blendmode(bm_normal);
//define the palette names
var palette_names = [
  "Glitch.scorp", 
  "Destrux.scorp",
  "GateKeep.scorp",
  "Maid.scorp", 
  "Boss.scorp",
  "Gems.exe",
  "Cake.png",
  "Void Plugin",
  "Sus.mp4",
  "5heg0tth3",
  "Timerpg.apk",
  "Isolated.iso", 
  "Smol.gml",
  "Pop.star",
  "Source Code",
  "Y05h4444",
  "Architect.roa",
  "B1rd^^^^",
  "Thatsite.png",
  "p4r4d1s3m1k0",
  "Model T1",
  "Model R0",
  "Model BU",
  "Page no.?", 
  "1Z4N4M1", 
  "Adapter", 
  "Delta 04", 
  "Portal.os", 
  "Omen", 
];
var alt = get_player_color(player);
//draw the alt name and number. maybe not positioned well i didnt check
if drawtime < 120 {
draw_sprite_ext(sprite_get("idle"),drawtime/6,temp_x-10,temp_y+54 - floor(drawtime/2),1,1,0,-1,2 - drawtime/60);
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