if (state==PS_RESPAWN || (state==PS_ATTACK_GROUND && free && attack==AT_TAUNT)) {
    draw_sprite_ext(sprite_get("plat_behind"), get_gameplay_time() / 8, x, y, 1, 1, 0, -1, 1);
} 

