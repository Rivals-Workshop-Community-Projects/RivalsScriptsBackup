
//NES outline
if (get_player_color( player ) == 12) {
    outline_color = [ 78, 70, 1 ];
    init_shader();
}

//Grandad outline
if (get_player_color( player ) == 15) {
    outline_color = [ 19, 62, 138 ];
    init_shader();
}


if ((state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) and attack == AT_NSPECIAL){
    
    
    
    if gametime % 7 == 0 and old_gametime != gametime{
            indicator_timer++;
        }
        switch (indicator_timer % 4){
            case 0:
                var indicator_mini_x = x+12 - 1;
                var indicator_mini_y = y-char_height+5;
                
                var indicator_small_x = x+20;
                var indicator_small_y = y-char_height-2 + 1;
                
                var indicator_x = x+20 + 1;
                var indicator_y = y-char_height-30;
                
                break;
            case 1:
                var indicator_mini_x = x+12;
                var indicator_mini_y = y-char_height+5 + 1;
                
                var indicator_small_x = x+20 + 1;
                var indicator_small_y = y-char_height-2;
                
                var indicator_x = x+20;
                var indicator_y = y-char_height-30 - 1;
                break;
            case 2:
                var indicator_mini_x = x+12 + 1;
                var indicator_mini_y = y-char_height+5;
                
                var indicator_small_x = x+20;
                var indicator_small_y = y-char_height-2 - 1;
                
                var indicator_x = x+20 - 1;
                var indicator_y = y-char_height-30;
                break;
            case 3:
                var indicator_mini_x = x+12;
                var indicator_mini_y = y-char_height+5 - 1;
                
                var indicator_small_x = x+20 - 1;
                var indicator_small_y = y-char_height-2;
                
                var indicator_x = x+20;
                var indicator_y = y-char_height-30 + 1;
                break;
            
        }
        if(old_gametime != gametime){
            old_gametime = gametime;
            // var old_indicator_scale = indicator_scale;
            // indicator_scale = lerp(old_indicator_scale, 1, 0.75);
            
            
        }
    
    if window == 1{
        
        var indicator_scale_mini = window_timer <= 2 ? window_timer*0.5 : 1
        draw_sprite_ext(sprite_get("nspecial_smallcloud"), 1, indicator_mini_x, indicator_mini_y, indicator_scale_mini, indicator_scale_mini, 0, c_white, 255);
    
    
    
        var indicator_scale_small = window_timer <= 3 ? (window_timer >= 1 ? (window_timer - 1) * 0.5 : 0 ) : 1
        draw_sprite_ext(sprite_get("nspecial_smallcloud"), 0, indicator_small_x, indicator_small_y, indicator_scale_small, indicator_scale_small, 0, c_white, 255);
    
        indicator_scale = window_timer <= 4 ? (window_timer >= 3 ? (window_timer - 3) * 0.5 : 0 ) : 1;
        draw_sprite_ext(sprite_get("nspecial_cloud"), indicator, indicator_x, indicator_y, indicator_scale, indicator_scale, 0, c_white, 255);
        
       
    }
    if window == 2 or window == 3{
        draw_sprite(sprite_get("nspecial_smallcloud"), 1, indicator_mini_x, indicator_mini_y);
        draw_sprite(sprite_get("nspecial_smallcloud"), 0, indicator_small_x, indicator_small_y);
        draw_sprite(sprite_get("nspecial_cloud"), indicator, indicator_x, indicator_y);
    }
    
}