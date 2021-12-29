shader_start();

if (state == PS_RESPAWN || state == 6 && free && attack == AT_TAUNT){
        draw_sprite_ext(sprite_get("platback"), 0, x, y, 2, 2, 0, c_white, 1);
}

shader_end();