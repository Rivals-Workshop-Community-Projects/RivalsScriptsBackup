// pre-draw
shader_start();
//dattack steam
if (state == PS_ATTACK_GROUND) && (attack == AT_DATTACK) {
    draw_sprite(steam_vfx, state_timer, x - (30 * spr_dir), y - 15);
}

shader_end();