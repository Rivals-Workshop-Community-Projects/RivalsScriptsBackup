//other-post-draw

if (inStasis) {
    draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_yellow, 0.4 - (timerSoundVar/100));
    if (timerSoundVar < 100) {
        timerSoundVar += 1;
    }
}