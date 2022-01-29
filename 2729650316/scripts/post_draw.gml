// afterimage
if(instance_exists(grabbed_player_obj))
{
    with(grabbed_player_obj)
    {
        shader_start();
        if(other.attack == AT_USTRONG && other.window >= 4 && other.window <= 7)
        {  
            if(variable_instance_exists(id,"kinniku_front"))
                spr = draw_sprite_ext(kinniku_front,0,floor(other_player_id.x),floor(other_player_id.y+30),(1+small_sprites)*other_player_id.spr_dir,1+small_sprites,0,c_white,1)
        }
        shader_end();
    }
}

if(state == PS_SPAWN && state_timer > 10 && state_timer < 100)
{
    draw_debug_text( x-string_length(introText)*4, y+20, introText);
    draw_debug_text( x-string_length(introText)*4, y+36, introText2);
}