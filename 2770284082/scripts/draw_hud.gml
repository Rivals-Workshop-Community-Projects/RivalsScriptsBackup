///
shader_start();

    

    draw_sprite_ext(sprite_get("hat2"),0,temp_x + 4,temp_y - 2,-1,1,0,-1,1)




shader_end();    

if voiced == 0 && get_gameplay_time() <= 200{
       draw_debug_text(temp_x,temp_y - 15,"Muted");
}

if voiced == 1 && get_gameplay_time() <= 120{
       draw_debug_text(temp_x,temp_y - 15,"Taunt to deactive Agent M's voice.");
}