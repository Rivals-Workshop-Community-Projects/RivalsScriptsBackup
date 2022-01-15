if ((state = PS_ATTACK_AIR || state = PS_ATTACK_GROUND) && attack == 49){
    

draw_sprite_ext(sprite_get("final_effects"), image_index, x, y, 1 * spr_dir, 1, 0, c_white, 1);  

if (window = 1 && window_timer > 2){
    draw_sprite_ext( sprite_get( "final_sun" ), -1, x, y - 64 - finalsunmovement, 1, 1, 0, c_white, finalsunmovement / 160);
final_sunflash_opacity = 1;    
finalsunfadeout = 1;
}  

    
    if (window < 6){
        
        if (final_blackbg_opacity < 0.75){
            final_blackbg_opacity = final_blackbg_opacity + 0.05;
        }
        
    draw_sprite_ext(sprite_get("final_flash"), -1, 0, 0, room_width/2, room_height/2, 0, c_black, final_blackbg_opacity)
    }
    
        if (window = 7){
              final_blackbg_opacity = 0;
        }
  

 
        
if (window < 6 && window > 1){
    draw_sprite_ext( sprite_get( "final_sun" ), -1, x, y - 64 - finalsunmovement, 1, 1, 0, c_white, finalsunmovement / 160);
}

if (window = 6 || window = 7){
    draw_sprite_ext( sprite_get( "final_sun" ), -1, x, y - 64 - finalsunmovement, 1, 1, 0, c_white, finalsunfadeout);
    finalsunfadeout = finalsunfadeout - 0.05;
}

if (window = 2){
    draw_sprite_ext(sprite_get("final_flash"), -1, 0, 0, room_width/2, room_height/2, 0, c_white, final_sunflash_opacity);
    final_sunflash_opacity = final_sunflash_opacity - 0.05;
}


        
}

