shader_start();
if ostyle > 0 {
    draw_sprite(sprite_get("obamium"), get_gameplay_time() / 2,  temp_x + 26, temp_y);
    draw_sprite_part(sprite_get("hud_halo"), 0, 0, 0, (otime/900) * 182, 36, temp_x + 26, temp_y);
}

if obabo > 0 {
       draw_debug_text(temp_x - 6,temp_y - 10,"DOWN + TAUNT TO SWITCH STYLE");
}

    if ostyle == 1{
        if get_gameplay_time()%80 > 60{
           draw_debug_text(temp_x - 6,temp_y - 15 - 10*(obabo>0),"[Mr.President] +Spd -Spc -Str");
        } else{
          if get_gameplay_time()%80 > 20 && get_gameplay_time()%80 <= 40 {
           draw_debug_text(temp_x - 6,temp_y - 15 - 10*(obabo>0),"[Mr.President] More Hit Damage"); 
          } else {
            draw_debug_text(temp_x - 6,temp_y - 15 - 10*(obabo>0),"[Mr.President]");   
          }
        }
    }
    
    if ostyle == 2{
        if get_gameplay_time()%80 > 60{
           draw_debug_text(temp_x - 6,temp_y - 15 - 10*(obabo>0),"[Specialist] +Spc -Str");
        } else{
          if get_gameplay_time()%80 > 20 && get_gameplay_time()%80 <= 40 {
           draw_debug_text(temp_x - 6,temp_y - 15 - 10*(obabo>0),"[Specialist] All Specials Pratfall"); 
          } else {
            draw_debug_text(temp_x - 6,temp_y - 15 - 10*(obabo>0),"[Specialist]");   
          }
        }
    }
    
    if ostyle == 3{
        if get_gameplay_time()%80 > 60{
           draw_debug_text(temp_x - 6,temp_y - 15 - 10*(obabo>0),"[Terminator] --Spd");
        } else{
          if get_gameplay_time()%80 > 20 && get_gameplay_time()%80 <= 40 {
           draw_debug_text(temp_x - 6,temp_y - 15 - 10*(obabo>0),"[Terminator] Attack Stockpile"); 
          } else {
            draw_debug_text(temp_x - 6,temp_y - 15 - 10*(obabo>0),"[Terminator]");   
          }
        }
    }
    
    if ostyle == 4{
           if get_gameplay_time()%80 > 60{
           draw_debug_text(temp_x - 6,temp_y - 15 - 10*(obabo>0),"[Patriotic] -Spc +Str");
        } else{
          if get_gameplay_time()%80 > 20 && get_gameplay_time()%80 <= 40 {
           draw_debug_text(temp_x - 6,temp_y - 15 - 10*(obabo>0),"[Patriotic] Take Less Damage"); 
          } else {
            draw_debug_text(temp_x - 6,temp_y - 15 - 10*(obabo>0),"[Patriotic]");   
          }
        }
    }   
    
    if ostyle == 5{
           draw_debug_text(temp_x - 6,temp_y - 15 - 10*(obabo>0),"[[Standard]]");
    }
    



if obabo > 0 {
    
    if obabo >= 1 {
         draw_sprite(sprite_get("obamiumhud"), 0,  temp_x + 46, temp_y + 30);
    }
    
    if obabo >= 2 {
         draw_sprite(sprite_get("obamiumhud"), 0,  temp_x + 50, temp_y + 30);
    }
    
    if obabo >= 3 {
         draw_sprite(sprite_get("obamiumhud"), 0,  temp_x + 54, temp_y + 30);
    }
    
    if obabo >= 4 {
         draw_sprite(sprite_get("obamiumhud"), 0,  temp_x + 58, temp_y + 30);
    }
    
    if obabo >= 5 {
         draw_sprite(sprite_get("obamiumhud"), 0,  temp_x + 62, temp_y + 30);
    }
    
    if obabo >= 6 {
         draw_sprite(sprite_get("obamiumhud"), 0,  temp_x + 66, temp_y + 30);
    }

    
    
}
shader_end() 