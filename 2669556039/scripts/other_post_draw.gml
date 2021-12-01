//

if(variable_instance_exists(other_player_id, "statusIndications"))
{
    for(var i = 0; i < toxicStacks; i++)
        draw_sprite_ext(other_player_id.statusIndications, 0, x-30 + i * 16, y-char_height*2+26, 2, 2, 0, c_white, 1);
    
    for(var i = 0; i < hypnoStacks; i++)
        draw_sprite_ext(other_player_id.statusIndications, 1, x-6 + i * 16, y-char_height*2+32, 2, 2, 0, c_white, 1);
}

if(putToSleep)
{
    if(!hitpause)
        putToSleep = false;
    else
    {
        for(var i = 0; i < 3; i++)
        {
            var animTimer = 1-(hitstop/80);
            animTimer -= i * 0.25;
            animTimer = max(animTimer, 0);
            animTimer = min(animTimer, 1);
            draw_sprite_ext(other_player_id.nspecialSleep, 0, 
            x - spr_dir * 8-animTimer*32, 
            y - char_height*2 + 64-animTimer*64, 
            animTimer * 2,
            animTimer * 2,
            0, c_white,
            animTimer < 0.5 ? animTimer*2 : (1-animTimer)*2);
        }
        /*shader_start();
        var scale = small_sprites ? 2 : 1;
        draw_sprite_ext(sprite_index, image_index, x, y, scale * spr_dir, scale, -90, c_white, 1);
        shader_end();*/
        //TODO: also rotate player so looks like laying down?
    }
}