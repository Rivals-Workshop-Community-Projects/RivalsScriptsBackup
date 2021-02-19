// pre-draw

//numbers

if (attack == AT_NSPECIAL && window == 2 && !dodgeCheck){
    draw_sprite(sprite_get("ticknum"), tickCount + 1, x - 8, y - (32 + window_timer));
}
else if (tickCount > 0){
    if(tickCount == 5){
        draw_sprite(sprite_get("sparkle"), get_gameplay_time() * 0.2, x - 16, y - 66);
    }
    draw_sprite(sprite_get("lines"), get_gameplay_time() * 0.1, x - 24, y - 58);
    draw_sprite(sprite_get("ticknum"), tickCount, x - 8, y - 58);
}