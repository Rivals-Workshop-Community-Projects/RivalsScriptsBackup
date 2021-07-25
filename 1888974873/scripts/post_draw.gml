if (shouldprompt == 1){
    draw_sprite(sprite_get("buttonpress"), 1, x - promptside, y - promptheight);
    shouldprompt = 0;
}

if (shouldprompt == 2){
    draw_sprite(sprite_get("buttonpress"), 0, x - promptside, y - promptheight);
    shouldprompt = 0;
}

if (shouldprompt == 3){
    draw_sprite(sprite_get("buttonpress"), 2, x - promptside, y - promptheight);
    shouldprompt = 0;
}


user_event(12);

//if (attack == AT_DSPECIAL){
//    if (window == 4 && window_timer <= 9){
//        draw_sprite(sprite_get("buttonpress"), 0, x - 12, y - 140);
//    }
//}

//if (attack == AT_DSPECIAL){
//    if (window <= 3){
//        draw_sprite(sprite_get("buttonpress"), 0, x - 12, y - 140);
//    }
//}