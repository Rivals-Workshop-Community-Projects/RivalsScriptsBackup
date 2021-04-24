// knife flurry effect - this follows the player so can't use the "hit effect" system
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_JAB || attack == AT_NAIR)) {
    if (window > 1 && window % 2 == 1) {
        draw_sprite_ext(sprite_get("flurry"), floor(window_timer * 0.5), x, y, spr_dir, 1, 0, c_white, 1);
    }
}

// draw chainsaws on top of sakuya
with(asset_get("obj_article1")) {
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, image_angle, c_white, 1.0);
}
