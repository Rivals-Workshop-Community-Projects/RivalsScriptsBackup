shader_start();

shader_end() 


if get_player_color(player) != 5{
if cosmetic == 1 && get_gameplay_time() <= 200{
       draw_debug_text(temp_x,temp_y - 15,"Taunt to disable cosmetic effects.");
}

if cosmetic  == 0 && get_gameplay_time() <= 120{
       draw_debug_text(temp_x,temp_y - 15,"Cosmetic disabled.");
}
}
