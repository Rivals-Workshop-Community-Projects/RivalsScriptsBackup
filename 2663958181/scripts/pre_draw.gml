shader_start();

if (state == PS_RESPAWN || state == 6 && free && attack == AT_TAUNT){
        draw_sprite(sprite_get("platback"), 0, x, y);
}

shader_end();