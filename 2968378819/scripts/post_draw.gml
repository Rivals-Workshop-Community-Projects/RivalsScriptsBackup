
shader_start();

//Draws the Plat sprite
if (state == PS_RESPAWN || (attack == AT_TAUNT && i_died == true)){
    if (stock_number >= 3) draw_sprite_ext(sprite_get("plat_draw"), 0, x, y, 1, 1, 0, c_white, 1);
    if (stock_number == 2) draw_sprite_ext(sprite_get("plat_draw"), 1, x, y, 1, 1, 0, c_white, 1);
    if (stock_number == 1) draw_sprite_ext(sprite_get("plat_draw"), 2, x, y, 1, 1, 0, c_white, 1);
    if (stock_number < 1) draw_sprite_ext(sprite_get("plat_draw"), 3, x, y, 1, 1, 0, c_white, 1);
}

if uptilt_buffed && state == PS_ATTACK_GROUND && attack == AT_UTILT{
    draw_sprite_ext(sprite_get("ewgf_vfx"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
}

shader_end();

