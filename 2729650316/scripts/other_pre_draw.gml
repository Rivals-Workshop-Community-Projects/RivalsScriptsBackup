// afterimage
if(instance_exists(other_player_id))
{
    if(instance_exists(other_player_id.grabbed_player_obj))
    {
        if(other_player_id.grabbed_player_obj == id)
        {
            shader_start();
            if(other_player_id.attack == AT_USTRONG && other_player_id.window >= 4 && other_player_id.window <= 7)
            {
                draw_y = 999;   
                hud_offset = -30;
                if(variable_instance_exists(id,"kinniku_behind"))
                    draw_sprite_ext(kinniku_behind,0,floor(other_player_id.x),floor(other_player_id.y+30),(1+small_sprites)*other_player_id.spr_dir,1+small_sprites,0,c_white,1)
                else
                    draw_sprite_ext(sprite_index,image_index,x+floor(char_height/1.5)*other_player_id.spr_dir,y,(1+small_sprites)*other_player_id.spr_dir,1+small_sprites,90*other_player_id.spr_dir,c_white,1)
            }
            if(other_player_id.attack == AT_FSTRONG && other_player_id.window >= 4)
            {
                draw_y = 999;   
                draw_sprite_ext(sprite_index,image_index,x-floor(char_height/3)*spr_dir,y,(1+small_sprites)*spr_dir,1+small_sprites,-45*spr_dir,c_white,1)
            }
            if(other_player_id.attack == AT_DSTRONG)
            {
                draw_y = 999;   
                draw_sprite_ext(sprite_index,image_index,x+floor(char_height/1.5)*other_player_id.spr_dir,y,(1+small_sprites)*other_player_id.spr_dir,1+small_sprites,90*other_player_id.spr_dir,c_white,1)
            }
            shader_end();
        }
    }
}