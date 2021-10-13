//Halloween Effect
if((state == PS_IDLE || state == PS_SPAWN) && halloween == true){
    if(spr_dir == 1){ 
        draw_sprite(sprite_get("halloween_right"), image_index, x, y)
    }else{
        draw_sprite(sprite_get("halloween_left"), image_index, x, y)
    }
}