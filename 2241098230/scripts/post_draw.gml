//

if (hat_start) {
    draw_sprite_ext(sprite_get("riptide_hat"), image_index, round(x), round(y), spr_dir * image_xscale, image_yscale, 0, image_blend, image_alpha);
}

//haha fune
// if (racism_install && get_gameplay_time() >= 120 && get_gameplay_time() <= 240) {
//     if (get_gameplay_time() == 120) {
//         sound_play(asset_get("mfx_confirm"));
//     }
//     draw_debug_text(x + 40, y - 120, "GRRR, I HATE THOSE FUCKING FRENCH ''PEOPLE''");
// }