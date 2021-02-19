draw_sprite_ext(spr_current, fake_image_index, x, y, size, size, 0, c_white, 1);

if (instance_exists(coin) && coin.visible){
	//draw_debug_text(round(x - 11), round(start_y - 50 + text_y), coin.hit_txt);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_font(asset_get("fName"));
	
	for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_color(x + i * 2, start_y - 50 + text_y + j * 2, coin.hit_txt, c_black, c_black, c_black, c_black, 1);
        }
    }
    
    draw_text_color(x, start_y - 50 + text_y, coin.hit_txt, text_color, text_color, text_color, text_color, 1);
}