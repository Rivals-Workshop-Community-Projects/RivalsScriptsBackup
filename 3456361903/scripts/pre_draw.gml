//predraw

var col_gold = make_colour_rgb(get_color_profile_slot_r( get_player_color(player), 7 ), get_color_profile_slot_g( get_player_color(player), 7 ), get_color_profile_slot_b( get_player_color(player), 7 ));

if (in_spotlight) {
    if (bboost_counter <= 0) {
        bboostOutline(col_gold, 1, 0, 0.075);
	    gpu_set_fog(0, c_white, 0, 0);
    }
}

if (bboost_counter > 0) {
    switch (bboost_counter) {
        case 1: bboost_a = 0.15 break;
        case 2: bboost_a = 0.25 break;
        case 3: bboost_a = 1 break;
    }
	bboostOutline(col_gold, 1, 0, bboost_a);
	gpu_set_fog(0, c_white, 0, 0);
}

with (pHitBox) {
	if (attack == AT_EXTRA_2) {
		var log = draw_sprite_ext( sprite_get("log"), 0, x, y, 1, 1, player_id.log_angle, c_white, 1 );
		//log.spr_dir = 1
	}
}

#define bboostOutline(_colour, _heightRatio, _xOffsetRatio, _alpha)
{
    gpu_set_fog(1, _colour, 0, 1);
    for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
        draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, _alpha);
}