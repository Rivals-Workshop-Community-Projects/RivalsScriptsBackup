// pre-draw
shader_start();
if (state == PS_RESPAWN || state == PS_ATTACK_GROUND && attack == AT_TAUNT && initial_invince == 1)
    draw_sprite(sprite_get("platbg"), 0, x,y);
shader_end();