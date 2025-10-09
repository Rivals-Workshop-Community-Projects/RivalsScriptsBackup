//
var num_player_objs = instance_number(oPlayer);
for (var pnum = 0; pnum < num_player_objs; pnum++) with instance_find(oPlayer, pnum) {
	if !visible { continue; };
	//Black Jack
	if (ror_card_install_black_jack && ror_install_active && (ror_luck && ror_luck % 21 == 0)) {
	//if (true) {
		gpu_set_fog(true, c_yellow, 0, 0);
		draw_sprite_ext(sprite_index, image_index, x + 2, y, (abs(image_xscale) + small_sprites) * spr_dir, (abs(image_yscale) + small_sprites) * sign(image_yscale),	0, c_white,	1);
		draw_sprite_ext(sprite_index, image_index, x - 2, y, (abs(image_xscale) + small_sprites) * spr_dir, (abs(image_yscale) + small_sprites) * sign(image_yscale),	0, c_white,	1);
		draw_sprite_ext(sprite_index, image_index, x, y - 2, (abs(image_xscale) + small_sprites) * spr_dir, (abs(image_yscale) + small_sprites) * sign(image_yscale),	0, c_white,	1);
		draw_sprite_ext(sprite_index, image_index, x, y + 2, (abs(image_xscale) + small_sprites) * spr_dir, (abs(image_yscale) + small_sprites) * sign(image_yscale),	0, c_white,	1);
		gpu_set_fog(false, c_yellow, 0, 0);
	}
}