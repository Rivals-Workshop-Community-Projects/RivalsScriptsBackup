
if otime > 0 {
    draw_sprite(sprite_get("obamium"), get_gameplay_time() / 2,  temp_x + 26, temp_y);
    draw_sprite_part(sprite_get("hud_halo"), 0, 0, 0, (otime/900) * 182, 36, temp_x + 26, temp_y);
}

if obabo > 0 {
       draw_debug_text(temp_x - 6,temp_y - 10,"DOWN + TAUNT TO SWITCH STYLE");
}

if obabo > 0 {
    if ostyle == 1{
           draw_debug_text(temp_x - 6,temp_y - 25,"Mr.President");
    }
    
    if ostyle == 2{
           draw_debug_text(temp_x - 6,temp_y - 25,"Specialist");
    }
    
    if ostyle == 3{
           draw_debug_text(temp_x - 6,temp_y - 25,"Terminator");
    }
    
    if ostyle == 4{
           draw_debug_text(temp_x - 6,temp_y - 25,"Patriotic");
    }
    
    if ostyle == 5{
           draw_debug_text(temp_x - 6,temp_y - 25,"He has no style");
    }
    
} else {
     if ostyle == 1{
           draw_debug_text(temp_x - 6,temp_y - 15,"Mr.President");
    }
    
    if ostyle == 2{
           draw_debug_text(temp_x - 6,temp_y - 15,"Specialist");
    }
    
    if ostyle == 3{
           draw_debug_text(temp_x - 6,temp_y - 15,"Terminator");
    }
    
    if ostyle == 4{
           draw_debug_text(temp_x - 6,temp_y - 15,"Patriotic");
    }   
        if ostyle == 5{
           draw_debug_text(temp_x - 6,temp_y - 15,"He has no style");
    }
    
}

