ncharge_col = make_color_rgb(get_color_profile_slot_r(alt, 1), get_color_profile_slot_g(alt, 1), get_color_profile_slot_b(alt, 1));
halfcharge_col = make_color_rgb(0, 239, 79);
maxcharge_col = make_color_rgb(156, 49, 236);

if state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR{
	if attack == AT_NSPECIAL && window == 2{
		if nspec_charge < nspec_charge_mid && state_timer % 16 < 8 chargingOutline(ncharge_col, 1, 0); // base colors
		else if nspec_charge >= nspec_charge_mid && nspec_charge < nspec_charge_max && state_timer % 8 < 4 chargingOutline(halfcharge_col, 1, 0); // green
		else if nspec_charge >= nspec_charge_max && state_timer % 4 < 2 chargingOutline(maxcharge_col, 1, 0); // magenta
	}
	else if attack == AT_DSPECIAL && image_index >= 9 && my_grab_id == dspec_rock draw_sprite_ext(sprite_get("dspecial_rock"), image_index + 9, x, y, spr_dir, 1, image_angle, c_white, 1);
}

if nspec_sfx_timer{
	if nspec_sfx_timer == 1{
		nspec_sfx = sound_play(sound_get("nspecial_charge_loop"), true, false, 1, 1);
	}
	nspec_sfx_timer--;
}

#define chargingOutline(_colour, _heightRatio, _xOffsetRatio)
{
	gpu_set_fog(1, _colour, 0, 1);
	for (i = -1; i < 2; i++;) for (j = -1; j < 2; j++;) draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height * _xOffsetRatio, sprite_width * spr_dir, sprite_height * _heightRatio, x + (i * 2) + draw_x - (sprite_xoffset * (1 + small_sprites)), y + (j * 2) + ((draw_y - sprite_yoffset + (sprite_height * _xOffsetRatio)) * (1 + small_sprites)), spr_dir * (1 + small_sprites), 1 + small_sprites, c_white, 1);
	gpu_set_fog(0, c_white, 0, 0);
}