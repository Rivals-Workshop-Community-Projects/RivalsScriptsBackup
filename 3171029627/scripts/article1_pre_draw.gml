
//if (state_draw >= 0)
//draw_sprite_ext(sprite_get("torment_spears"), state_draw, x-50*spr_dir, y, spr_dir, 1, 0, c_white, 1);

//Drawing torment % numbers
draw_sprite_ext(sprite_get("numbers"), number_ones, x, y + 32, 2, 2, 0, c_white, 1);
if(number_tens > 0){
    draw_sprite_ext(sprite_get("numbers"), number_tens, x - 7*2, y + 32, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("plus"), 0, x - 2*7*2 + 2, y + 34, 2, 2, 0, c_white, 1);
} else {
    draw_sprite_ext(sprite_get("plus"), 0, x - 7*2 + 2, y + 34, 2, 2, 0, c_white, 1);
}
