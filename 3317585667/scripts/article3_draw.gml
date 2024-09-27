if paralax_amount {
paralax = scroll_x - view_get_xview() * paralax_amount * 0.1;
paralay = y - 100 -view_get_yview() * paralay_amount * 0.1;

draw_sprite_tiled_ext(scroll_sprite_index, 0, paralax, paralay, 2, 2, c_white, 1);
}