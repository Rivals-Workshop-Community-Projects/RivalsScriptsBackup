///
shader_start();

    
 



shader_end();    

if voiced == 0 && get_gameplay_time() <= 200{
       draw_debug_text(temp_x,temp_y - 15,"Muted");
}

if voiced == 1 && get_gameplay_time() <= 120{
       draw_debug_text(temp_x,temp_y - 15,"Taunt to deactive Agent M's voice.");
}