with(pHitBox){
    if(type == 2 and player_id = other and attack == AT_USPECIAL){

        draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, ease_circIn(1, 0, hitbox_timer, 30));
        draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_black, ease_circIn(1, 0, hitbox_timer, 30)*.5);

    }
    
}

if(state == PS_RESPAWN){
    draw_sprite(sprite_get("plat_bg"), 0, x-10, y);
}

