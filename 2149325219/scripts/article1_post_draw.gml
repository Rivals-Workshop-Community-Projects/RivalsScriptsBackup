if(state == 1){
    //bomb
        if(skull == false){
            if(blinkT % 2 == 0){
                if(fuse > 120){
                    draw_sprite_ext(sprite_get("bomb"), 1, x, y+2, spr_dir, 1, (-2*x)+random_rotate, -1, 1 )
                }
                else{
                    draw_sprite_ext(sprite_get("bombw"), 1, x, y+2, spr_dir, 1, (-2*x)+random_rotate, -1, 1 )
                }
                
            }
            if(blinkT % 2 == 1){
                draw_sprite_ext(sprite_get("bombr"), 1, x, y+2, spr_dir, 1, (-2*x)+random_rotate, -1, 1 )
            }
        }
        else{
            if(blinkT % 2 == 0){
                if(fuse > 120){
                    draw_sprite_ext(sprite_get("bomb_skull"), 1, x, y+2, spr_dir, 1, (-2*x)+random_rotate, -1, 1 )
                }
                else{
                    draw_sprite_ext(sprite_get("bombw_skull"), 1, x, y+2, spr_dir, 1, (-2*x)+random_rotate, -1, 1 )
                }
            }
            if(blinkT % 2 == 1){
                draw_sprite_ext(sprite_get("bombr_skull"), 1, x, y+2, spr_dir, 1, (-2*x)+random_rotate, -1, 1 )
            }
        }

}