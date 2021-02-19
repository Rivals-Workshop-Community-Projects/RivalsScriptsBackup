//update



if(attack == AT_USPECIAL){
    if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
        if(window == 1){
            draw_sprite_ext(sprite_get("uspecial_start"), image_index*0.5, x-70, y-40, 1, 1, 0, c_white, 1);
        }
        if(window == 2){
            switch(bl_select){
                case 0:
                draw_sprite_ext(sprite_get("float"), image_index, x-70, y-40, 1, 1, 0, c_white, 1);
                break;
               
                case 1:
                draw_sprite_ext(sprite_get("tele"), image_index, x-70, y-40, 1, 1, 0, c_white, 1);
                break;
               
                case 2:
                draw_sprite_ext(sprite_get("hot"), image_index, x-70, y-40, 1, 1, 0, c_white, 1);
                break;
                
                case 3:
                draw_sprite_ext(sprite_get("shift"), image_index, x-70, y-40, 1, 1, 0, c_white, 1);
                break;
                
                case 4:
                draw_sprite_ext(sprite_get("end"), image_index, x-70, y-40, 1, 1, 0, c_white, 1);
                break;
                
                case 5:
                draw_sprite_ext(sprite_get("sink"), image_index, x-70, y-40, 1, 1, 0, c_white, 1);
                break;
                
                case 6:
                draw_sprite_ext(sprite_get("stop"), image_index, x-70, y-40, 1, 1, 0, c_white, 1);
                break;
                
                case 7:
                draw_sprite_ext(sprite_get("default"), image_index, x-70, y-40, 1, 1, 0, c_white, 1);
                break;
                
            }
        }
    }
}

if(attack == AT_DSPECIAL){
    if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
        if(window == 1){
        draw_sprite_ext(sprite_get("dspecial_start"), image_index, x-70, y-40, 1, 1, 0, c_white, 1);
        }
        if(window == 2){
            
            switch(bl_select){
                case 0:
                draw_sprite_ext(sprite_get("dspecial_float"), image_index, x-70, y-40, 1, 1, 0, c_white, 1);
                break;
               
                case 1:
                draw_sprite_ext(sprite_get("dspecial_tele"), image_index, x-70, y-40, 1, 1, 0, c_white, 1);
                break;
               
                case 2:
                draw_sprite_ext(sprite_get("dspecial_hot"), image_index, x-70, y-40, 1, 1, 0, c_white, 1);
                break;
                
                case 3:
                draw_sprite_ext(sprite_get("dspecial_shift"), image_index, x-70, y-40, 1, 1, 0, c_white, 1);
                break;
                
                case 4:
                draw_sprite_ext(sprite_get("dspecial_end"), image_index, x-70, y-40, 1, 1, 0, c_white, 1);
                break;
                
                case 5:
                draw_sprite_ext(sprite_get("dspecial_sink"), image_index, x-70, y-40, 1, 1, 0, c_white, 1);
                break;
                
                case 6:
                draw_sprite_ext(sprite_get("dspecial_stop"), image_index, x-70, y-40, 1, 1, 0, c_white, 1);
                break;
                
                case 7:
                draw_sprite_ext(sprite_get("dspecial_default"), image_index, x-70, y-40, 1, 1, 0, c_white, 1);
                break;
            }
            
        }
    }
}