//Draws the Plat sprite
if (state == PS_RESPAWN || (attack == AT_TAUNT && i_died == true)){
    draw_sprite_ext(sprite_get("plat_behind"), state_timer/8, x+20*spr_dir, y, 2*spr_dir, 2, 0, c_white, 1);
}

