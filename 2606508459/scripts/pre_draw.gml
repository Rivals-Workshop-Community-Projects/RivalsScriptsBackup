// pre-draw

// SHINE
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) 
    && attack == AT_NSPECIAL_2
    && window == 2)
{
    draw_sprite(sprite_get("shine"), floor(window_timer/2), x, y);
}

/*
//Melee Icons
if (meleei_active)
{
    var currPos = 0
    for (var i = 0; i < meleei_numPlayers; i++)
    {
        if (player == meleei_activePlayers[i][0]) break;
        currPos++
    }
    var _printY = meleei_yoff + view_get_yview() + 470 // WARN: Possible Desync. Consider using get_instance_y(asset_get("camera_obj")).
    shader_start();
    for (var i = 0; i < get_player_stocks(player); i++) 
    {
        var _printX = meleei_xoff + (currPos * 238) + (view_get_xview() + meleei_useX) + (i * 22) // WARN: Possible Desync. Consider using get_instance_x(asset_get("camera_obj")).
        draw_sprite_ext( meleei_sprite, 0, _printX, _printY, 1, 1, 0, c_white, 1); 
    }
    shader_end();
}
*/

//Genesis glitchy thing
if(get_player_color(player) == alt_gen8)
{
    if(get_player_color(player) == alt_gen8)
    {
        if (state == PS_ATTACK_GROUND && attack == AT_TAUNT_2)
        {
            shader_start();
            
            var spanX = state_timer * 5
            if (spanX > 40) { spanX = 40 }
            
            draw_sprite_ext( sprite_index, image_index, x - spanX, y, spr_dir, 1, 0, c_red, 1 );
            draw_sprite_ext( sprite_index, image_index, x + spanX, y, spr_dir, 1, 0, c_red, 1 );
            
            shader_end();
        }
        else
        {
            for (var i = 3; i >= 0; i -= 2)
            {
                if (i == 1)
                {
                    //gpu_set_fog(1,c_white,1,0);
                    shader_start();
                    
                    draw_sprite_ext( 
                        sprite_index, 
                        image_index, 
                        pf_x[i], 
                        pf_y[i], 
                        spr_dir, 
                        1, 0, 
                        c_red, 
                        0.4
                    ); 
                    
                    //gpu_set_fog(0,c_white,1,0);
                    shader_end();
                }
                else
                {
                    shader_start();
                    
                    draw_sprite_ext( 
                        sprite_index, 
                        image_index, 
                        pf_x[i], 
                        pf_y[i], 
                        spr_dir, 
                        1, 0, 
                        c_red, 
                        0.2
                    ); 
            
                    shader_end();
                }
            }
        }
        
        shader_start();
        
        draw_sprite_ext( 
            sprite_get("gen8background"), 
            floor(fx_gen8_timer / (c_fx_gen8_timer/fx_gen8_sprites)), 
            x, 
            y, 
            1, 1, 0, c_white, 1
        ); 
        
        shader_end();
    }
}