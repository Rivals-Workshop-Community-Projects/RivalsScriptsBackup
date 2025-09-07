if state == PS_RESPAWN || respawn_taunt > 0 draw_sprite_ext(sprite_get("platform"), 0, x, y, 2 * spr_dir, 2, 0, c_white, 1);

shader_start();

if nspec_charge{
	shader_end();
	var maxfog = 0.75;
	var intensity = clamp(sin((nspec_charge) / (nspec_charge_mid - clamp(nspec_charge * 0.2, 0, 20))) * maxfog, 0, maxfog);
	var altfog = make_color_rgb(color_get_blue(ncharge_col), color_get_red(ncharge_col), color_get_green(ncharge_col));
	var grayfog = make_color_rgb(255 - color_get_red(ncharge_col), 255 - color_get_green(ncharge_col), 255 - color_get_blue(ncharge_col));
	var gbafog = make_color_rgb(35, 67, 49);
	gpu_set_fog(1, nspec_charge >= nspec_charge_max? (alt_main_color == "GRAY"? grayfog:(alt_main_color == "GBA"? gbafog:altfog)):ncharge_col, 0, 1);
	draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir * (1 + small_sprites), 1 + small_sprites, image_angle, c_white, intensity);
	gpu_set_fog(0, c_white, 0, 0);
	shader_start();
}
else if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_USPECIAL draw_sprite_ext(sprite_get("uspecial_rush" + (alt == 0 || alt == 31? "":"_mapped")), image_index, x, y, spr_dir * (small_sprites + 1), small_sprites + 1, image_angle, c_white, 1);

if alt == 31 && accurate_megaman_timer{
    shader_end();
	var maxfog = 1;
	var intensity = ((accurate_megaman_flashlength / 2) - abs((accurate_megaman_flashlength / 2) - accurate_megaman_timer)) / (accurate_megaman_flashlength / 2);
	gpu_set_fog(1, c_white, 0, 1);
	draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir * (1 + small_sprites), 1 + small_sprites, image_angle, c_white, intensity);
	gpu_set_fog(0, c_white, 0, 0);
	shader_start();
}

shader_end();