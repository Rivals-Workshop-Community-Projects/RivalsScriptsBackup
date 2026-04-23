if not active_effect = 0 && (effect_timer > 60 || effect_timer%4 >= 2){
if (active_effect = 1 or active_effect = 2 or active_effect = 3 or active_effect = 4 or active_effect = 5 or active_effect = 6 or active_effect = 7) && active_effect != 8{
gpu_set_fog(1, _col, 0, 1);
}

draw_sprite_ext(sprite_index, image_index, x+2, y, (image_xscale + small_sprites), (image_yscale + small_sprites), image_angle, image_blend, image_alpha);
draw_sprite_ext(sprite_index, image_index, x-2, y, (image_xscale + small_sprites), (image_yscale + small_sprites), image_angle, image_blend, image_alpha);
draw_sprite_ext(sprite_index, image_index, x, y+2, (image_xscale + small_sprites), (image_yscale + small_sprites), image_angle, image_blend, image_alpha);
draw_sprite_ext(sprite_index, image_index, x, y-2, (image_xscale + small_sprites), (image_yscale + small_sprites), image_angle, image_blend, image_alpha);
}
gpu_set_fog(0, c_black, 0, 0);
if (state == PS_RESPAWN){ draw_sprite(sprite_get("plat_pre"), 1, x, y,)}

if (state = PS_ATTACK_AIR or state = PS_ATTACK_GROUND) && attack = AT_NSPECIAL && window = 1 && window_timer > 4 && nspecial_ammo > 0{
	draw_sprite(sprite_get("deck_plc"), (nspecial_suit), x-15 , y-90);
}