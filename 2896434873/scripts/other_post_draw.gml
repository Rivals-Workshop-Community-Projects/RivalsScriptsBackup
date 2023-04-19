if "other_player_id" not in self exit;

with other_player_id
{
    if "reticule_lockedplayer" not in self exit;
    
    if (reticule_lockedplayer == other and reticule_state != -1)
    {
        shader_start();
            //rint("locked")
            //draw_debug_text(floor(reticule_position[0]),floor(reticule_position[1])+40,"FRAME - "+string(reticule_frame))
            //draw_sprite_ext(sprite_index,image_index,floor(reticule_position[0]),floor(reticule_position[1]),1,1,0,get_player_hud_color(player),1);
            draw_sprite_ext(sprite_get( reticule_show_steady_aim ?  "preticule" :  "reticule"),reticule_frame,floor(reticule_position[0]),floor(reticule_position[1]),1,1,0,reticule_show_steady_aim ? c_white : get_player_hud_color(player),1);
        shader_end();
    }
}