shader_end() 
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





//define the palette names

if drawtime <= 240 or (drawtime > 240 && drawtime < 260 && drawtime% 2 == 0) {
    
if alt <= 2 {
  
  if drawtime == 2 {
     sound_play(sound_get("lswitch"),false,noone, 1)	
  }
     if alt == 0 {
         draw_sprite_ext(sprite_get("asw"),0,temp_x + 0,temp_y+64- floor(drawtime/5),1,1,0,-1,2 - drawtime/120);
         draw_debug_text(floor(x)+12,floor(y)+140- floor(drawtime/5),"Aero: Spd- Dmg- Vit-"); 
         draw_debug_text(floor(x)+12,floor(y)+155- floor(drawtime/5),"   Power- Range++"); 
     }
     
     if alt == 1 {
         draw_sprite_ext(sprite_get("answ"),0,temp_x + 0,temp_y+64- floor(drawtime/5),1,1,0,-1,2 - drawtime/120);
         draw_debug_text(floor(x)+12,floor(y)+140- floor(drawtime/5),"Anima: Spd++ Dmg++ Vit--"); 
         draw_debug_text(floor(x)+12,floor(y)+155- floor(drawtime/5),"   Combo+ Power--");
     }
     
     if alt == 2{
         draw_sprite_ext(sprite_get("thsw"),0,temp_x + 0,temp_y+64- floor(drawtime/5),1,1,0,-1,2 - drawtime/120);
         draw_debug_text(floor(x)+12,floor(y)+140- floor(drawtime/5),"Thatanos: Spd-- Dmg+ Vit+"); 
         draw_debug_text(floor(x)+12,floor(y)+155- floor(drawtime/5),"   Loud+ Power++");
     }
     
draw_sprite_ext(sprite_get("lsw"),0,temp_x-10,temp_y+54- floor(drawtime/4),1,1,0,-1,2 - drawtime/120);
draw_debug_text(floor(x)+12,floor(y)+115- floor(drawtime/4),"Luna: Shoto, All-rounder");

}

if alt > 2 && alt <= 5 {
  if drawtime == 2 {
     sound_play(sound_get("aswitch"),false,noone, 1)	
  }
     if alt == 3 {
         draw_sprite_ext(sprite_get("lsw"),0,temp_x + 0,temp_y+64- floor(drawtime/5),1,1,0,-1,2 - drawtime/120);
         draw_debug_text(floor(x)+12,floor(y)+140- floor(drawtime/5),"Luna: Shoto, All-rounder "); 
     }
     
     if alt == 4 {
         draw_sprite_ext(sprite_get("answ"),0,temp_x + 0,temp_y+64- floor(drawtime/5),1,1,0,-1,2 - drawtime/120);
         draw_debug_text(floor(x)+12,floor(y)+140- floor(drawtime/5),"Anima: Spd++ Dmg++ Vit--"); 
         draw_debug_text(floor(x)+12,floor(y)+155- floor(drawtime/5),"   Combo+ Power--");
     }
     
     if alt == 5{
         draw_sprite_ext(sprite_get("thsw"),0,temp_x + 0,temp_y+64- floor(drawtime/5),1,1,0,-1,2 - drawtime/120);
         draw_debug_text(floor(x)+12,floor(y)+140- floor(drawtime/5),"Thatanos: Spd-- Dmg+ Vit+"); 
         draw_debug_text(floor(x)+12,floor(y)+155- floor(drawtime/5),"   Loud+ Power++");
     }
     
draw_sprite_ext(sprite_get("asw"),0,temp_x-10,temp_y+54- floor(drawtime/4),1,1,0,-1,2 - drawtime/120);
draw_debug_text(floor(x)+12,floor(y)+105- floor(drawtime/4),"Aero: Spd- Dmg- Vit-");
draw_debug_text(floor(x)+12,floor(y)+120- floor(drawtime/4),"   Power- Range++");

}


if alt > 8 && alt <= 11 {
    if drawtime == 2 {
     sound_play(sound_get("thswitch"),false,noone, 1)	
  }
     if alt == 9 {
         draw_sprite_ext(sprite_get("lsw"),0,temp_x + 0,temp_y+64- floor(drawtime/5),1,1,0,-1,2 - drawtime/120);
         draw_debug_text(floor(x)+12,floor(y)+140- floor(drawtime/5),"Luna: Shoto, All-rounder"); 
     }
     
     if alt == 10 {
         draw_sprite_ext(sprite_get("asw"),0,temp_x+0,temp_y+64- floor(drawtime/5),1,1,0,-1,2 - drawtime/120);
         draw_debug_text(floor(x)+12,floor(y)+140- floor(drawtime/5),"Aero: Spd- Dmg- Vit-");
         draw_debug_text(floor(x)+12,floor(y)+155- floor(drawtime/5),"   Power- Range++");

     }
     
     if alt == 11{
         draw_sprite_ext(sprite_get("answ"),0,temp_x + 0,temp_y+64- floor(drawtime/5),1,1,0,-1,2 - drawtime/120);
        draw_debug_text(floor(x)+12,floor(y)+140- floor(drawtime/5),"Anima: Spd++ Dmg++ Vit--"); 
        draw_debug_text(floor(x)+12,floor(y)+155- floor(drawtime/5),"   Combo+ Power--");

     }
     
draw_sprite_ext(sprite_get("thsw"),0,temp_x - 10,temp_y+54- floor(drawtime/4),1,1,0,-1,2 - drawtime/120);
draw_debug_text(floor(x)+12,floor(y)+105- floor(drawtime/4),"Thatanos: Spd-- Dmg+ Vit+"); 
draw_debug_text(floor(x)+12,floor(y)+120- floor(drawtime/4),"   Loud+ Power++");
}

if alt > 5 && alt <= 8 {
    if drawtime == 2 {
     sound_play(sound_get("answitch"),false,noone, 1)	
  }
     if alt == 6 {
         draw_sprite_ext(sprite_get("lsw"),0,temp_x + 0,temp_y+64- floor(drawtime/5),1,1,0,-1,2 - drawtime/120);
         draw_debug_text(floor(x)+12,floor(y)+140- floor(drawtime/5),"Luna: Shoto, All-rounder"); 
     }
     
     if alt == 7 {
         draw_sprite_ext(sprite_get("asw"),0,temp_x + 0,temp_y+64- floor(drawtime/5),1,1,0,-1,2 - drawtime/120);
         draw_debug_text(floor(x)+12,floor(y)+140- floor(drawtime/5),"Aero: Spd- Dmg- Vit-");
         draw_debug_text(floor(x)+12,floor(y)+155- floor(drawtime/5),"   Power- Range++");

     }
     
     if alt == 8{
         draw_sprite_ext(sprite_get("thsw"),0,temp_x + 0,temp_y+64- floor(drawtime/5),1,1,0,-1,2 - drawtime/120);
         draw_debug_text(floor(x)+12,floor(y)+140- floor(drawtime/5),"Thatanos: Spd-- Dmg+ Vit+"); 
         draw_debug_text(floor(x)+12,floor(y)+155- floor(drawtime/5),"   Loud+ Power++");
     }
     
draw_sprite_ext(sprite_get("answ"),0,temp_x - 10,temp_y+54- floor(drawtime/4),1,1,0,-1,2 - drawtime/120);
draw_debug_text(floor(x)+12,floor(y)+105- floor(drawtime/4),"Anima: Spd++ Dmg++ Vit--"); 
draw_debug_text(floor(x)+12,floor(y)+120- floor(drawtime/4),"   Combo+ Power--");

}

}

sprite_change_offset("tsw", 0, 0);
sprite_change_offset("thsw",0, 0);
sprite_change_offset("answ", 0, 0);
sprite_change_offset("asw", 0, 0);
sprite_change_offset("lsw", 0, 0);


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