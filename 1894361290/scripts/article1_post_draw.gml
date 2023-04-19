//article1_update

if disabled_timer > 0 {
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_black, 0.5);
    draw_sprite_ext(sprite_get("wt_disabled_vfx"), floor(disabled_timer/4), x, y, spr_dir, 1, 0, c_white, 1);
}

if player_id.hitbox_view draw_sprite_ext(mask_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 0.5)