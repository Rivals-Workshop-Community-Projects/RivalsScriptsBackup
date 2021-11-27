if "is_css" not in self is_css = true;
var temp_x = floor(x+10);
var temp_y = floor(y+10);
var buildtag = "indev";
var alt = get_player_color(player);

if "drawing" not in self {
       drawing = 0  
}

draw_sprite_ext(sprite_get("charselectbg"), drawing ,temp_x-2,temp_y-2,2,2,0,-1,1);

if ("prev_alt" not in self){
drawtime = 0

}
 
if ("alttime" not in self){
alttime = 0 
}


if ("prev_alt" in self && prev_alt != alt){
     drawing = floor(alttime%8)
     drawtime = 0
     sound_play(sound_get("nspecen"))
}

drawtime += 1 
alttime += 1 

prev_alt = alt;




  if drawing == 0 {
     draw_sprite_ext(sprite_get("charselect"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
     }
     
 
    if drawing == 1 {
     draw_sprite_ext(sprite_get("charselect"),1,temp_x-2,temp_y-2,2,2,0,-1,1);
     }
     
       if drawing == 2 {
     draw_sprite_ext(sprite_get("charselect"),2,temp_x-2,temp_y-2,2,2,0,-1,1);
     }
     
       if drawing == 3 {
     draw_sprite_ext(sprite_get("charselect"),3,temp_x-2,temp_y-2,2,2,0,-1,1);
     }
     
       if drawing == 4 {
     draw_sprite_ext(sprite_get("charselect"),4,temp_x-2,temp_y-2,2,2,0,-1,1);
     }
     
       if drawing == 5 {
     draw_sprite_ext(sprite_get("charselect"),5,temp_x-2,temp_y-2,2,2,0,-1,1);
     }
     
       if drawing == 6 {
     draw_sprite_ext(sprite_get("charselect"),6,temp_x-2,temp_y-2,2,2,0,-1,1);
     }
     
       if drawing == 7 {
     draw_sprite_ext(sprite_get("charselect"),7,temp_x-2,temp_y-2,2,2,0,-1,1);
     }
     



//define the palette names
var palette_names = [
  "The First Fallen",
 "Funny Guy",
 "Guillible Guy",
 "The Last Fallen",
 "Kyara",
 "Brother",
 "Bug lady",
 "Hands guy",
  "Unfamiliar",
  "Clown",
    "Deadly Rain",
      "Millenium Ago",
        "Gender?",
        "Hyper God (Rainbowfx)",
                "Landkon Alt",
                "Bed Lump",     
                "Guy from UnderSomething", 
                "BLW", 
                "N.Y.A",          
                
];
var alt = get_player_color(player);
//draw the alt name and number. maybe not positioned well i didnt check
if drawtime < 120 {
	sprite_change_offset("idle", 48, 74);
	draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
	draw_sprite_ext(sprite_get("idle"),drawtime/5,temp_x+38,temp_y+128 - floor(drawtime/2),1,1,0,-1,2 - drawtime/60);
}

if drawtime > 120 && drawtime < 140 && drawtime% 2 == 0 {
draw_debug_text(floor(x)+18,floor(y)+140 - floor(drawtime/2),string(palette_names[alt]));
}

if alt == 13 {
    
   hue = (drawtime%70)*4
   
    	color_rgb=make_color_rgb(255, 100, 50);
    		hue2=(color_get_hue(color_rgb)+hue) mod 255;
    			color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 

        set_character_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    set_article_color_slot(0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
  
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

init_shader();
