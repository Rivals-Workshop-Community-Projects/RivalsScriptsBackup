if state == PS_ATTACK_AIR && attack == AT_EXTRA_1{
    draw_sprite_ext(sprite_get("paraglide_meter"), 0, x - 25 + (5 * spr_dir), y - 80, (round(sc_paraglider_meter / 2)), 2, 0, c_white, 1);
}