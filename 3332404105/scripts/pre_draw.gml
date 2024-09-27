//Drawing below

set_character_color_shading(0, cool_factor * base_shade[0]);
set_character_color_shading(1, cool_factor * base_shade[1]);
set_character_color_shading(2, cool_factor * base_shade[2]);
set_character_color_shading(3, cool_factor * base_shade[3]);
set_character_color_shading(4, cool_factor * base_shade[4]);
set_character_color_shading(5, cool_factor * base_shade[5]);
set_character_color_shading(6, cool_factor * base_shade[6]);
set_character_color_shading(7, cool_factor * base_shade[7]);
set_color_profile_slot( 10, 1, round(255 * (cool_factor - 1) / (max_cool - 1)), round(128 * (cool_factor - 1) / (max_cool - 1)), 0 ); //face


if (body_hud == 1){
//inv
if (attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL_2 && attack != AT_DSPECIAL || attacking_now == 0){
	draw_sprite_ext(sprite_get("items_icon"), inv_slot[inv_selection], x - 2, y - 36 - char_height - hud_offset, 1, 1, 0, c_white, 0.75);
}

//drunk images
draw_drunk_image(1, 0);
draw_drunk_image(-1, 0);
draw_drunk_image(0, 1);
draw_drunk_image(0, -1);

//ammo
draw_sprite_ext(sprite_get("ammo_display"), ammo, x, y + 10, 0.5, 0.5, 0, c_white, 1)

//alleigiance draw

if (allegiance > 0){
    gpu_set_fog(true, all_col[allegiance], 1, 0);
    draw_sprite_ext(sprite_index, image_index, x + draw_x + 2, y + draw_y, spr_dir, image_yscale, spr_angle, all_col[allegiance], allresource[allegiance] / allresource_max);
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y + 2, spr_dir, image_yscale, spr_angle, all_col[allegiance], allresource[allegiance] / allresource_max);
    draw_sprite_ext(sprite_index, image_index, x + draw_x - 2, y + draw_y, spr_dir, image_yscale, spr_angle, all_col[allegiance], allresource[allegiance] / allresource_max);
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y - 2, spr_dir, image_yscale, spr_angle, all_col[allegiance], allresource[allegiance] / allresource_max);
    gpu_set_fog(false, all_col[allegiance], 0, 1);
}

}
//textures

if (attack == AT_DSPECIAL_2 && attacking_now == 2){
	if (inv_selection_unend == 12){
		draw_trade(sprite_get("dspecial_kingdom_weasel_c"))
	}
	if (inv_selection_unend == 13){
		draw_trade(sprite_get("dspecial_kingdom_clown_c"))
	}
	if (inv_selection_unend == 14){
		draw_trade(sprite_get("dspecial_kingdom_elf_c"))
	}
	if (inv_selection_unend == 15){
		draw_trade(sprite_get("dspecial_kingdom_hog_c"))
	}
}

if (get_player_color(player) == 1){
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
	draw_set_alpha(1);
	draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir, 1, spr_angle, c_white, 1);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);  
	draw_sprite_tiled_ext(sprite_get("text_zilly"), 0, x, y, 2, 2, c_white, 1);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
}

if (get_player_color(player) == 2){
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
	draw_set_alpha(1);
	draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir, 1, spr_angle, c_white, 1);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);  
	draw_sprite_tiled_ext(sprite_get("text_candycorn"), 0, 4, 0, 0.75, 0.75, c_white, 1);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
}

if (get_player_color(player) == 8){
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
	draw_set_alpha(1);
	draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir, 1, spr_angle, c_white, 1);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);  
	draw_sprite_tiled_ext(sprite_get("text_sbjah"), 0, random_func(9, 100, true), random_func(8, 100, true), 2, 2, c_white, 1);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
}

if (state == PS_RESPAWN || respawn_taunt != 0){
	shader_start();
	draw_sprite(sprite_get("plat_back"), 0, x, y);
	shader_end();
}


#define draw_drunk_image(directx, directy)
gpu_set_fog(true, c_black, 1, 0);
draw_sprite_ext(sprite_index, image_index, x + (intox_level * intox_level) * directx, y + (intox_level * intox_level) * directy, spr_dir, 1, 0, c_white, 0.1 * intox_level);
gpu_set_fog(false, c_black, 0, 1);

#define draw_trade(traded_kingdom_sprite)
if (floor(window_timer/(20/15)) == 2 && generic_timer == 0 || floor(window_timer/(20/15)) == 14 && generic_timer == 1){
	generic_effect = spawn_hit_fx(x + 72 * spr_dir, y, vfx_poof);
	generic_effect.depth = -5;
	generic_effect.uses_shader = 0;
	if (floor(window_timer/(20/15)) == 2 && generic_timer == 0 ){
		commuting_with_kindom = 1;
	}
	if (floor(window_timer/(20/15)) == 14 && generic_timer == 1){
		commuting_with_kindom = 0;
	}
	generic_timer += 1;
}
draw_sprite_ext(traded_kingdom_sprite, floor(window_timer/(20/15)), x + draw_x, y + draw_y, spr_dir, image_yscale, 0, c_white, 1);