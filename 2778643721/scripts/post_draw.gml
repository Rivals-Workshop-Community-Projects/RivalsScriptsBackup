//
if (nspecial_gague == 1){
        var shade_alpha = .3;
        if (state_timer % 12 <= 6){
                    			shade_alpha = 0;
		} else shade_alpha = .3;
        gpu_set_fog(1, c_white, 0, 1);
            draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale, image_yscale, spr_angle, c_white, shade_alpha)
        gpu_set_fog(0, c_white, 0, 1);
}

if (nspecial_gague == 2){
        var shade_alpha = .3;
        if (state_timer % 12 <= 6){
                    			shade_alpha = 0;
		} else shade_alpha = .3;
        gpu_set_fog(1, c_orange, 0, 1);
            draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, image_xscale, image_yscale, spr_angle, c_white, shade_alpha)
        gpu_set_fog(0, c_orange, 0, 1);
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
if (attack == AT_USPECIAL && window == 2){
	switch (portal1_dir){
		case 1:
		draw_sprite_ext(sprite_get("uspecial_pointer"), 0, x, y-16, 1, 1, 90, c_white, 1);
		break;
		case 2:
		draw_sprite_ext(sprite_get("uspecial_pointer"), 0, x, y-16, 1, 1, 45, c_white, 1);
		break;
		case 3:
		draw_sprite_ext(sprite_get("uspecial_pointer"), 0, x, y-16, 1, 1, 0, c_white, 1);
		break;
		case 4:
		draw_sprite_ext(sprite_get("uspecial_pointer"), 0, x, y-16, 1, 1, -45, c_white, 1);
		break;
		case 5:
		draw_sprite_ext(sprite_get("uspecial_pointer"), 0, x, y-16, 1, 1, -90, c_white, 1);
		break;
		case 6:
		draw_sprite_ext(sprite_get("uspecial_pointer"), 0, x, y-16, 1, 1, -135, c_white, 1);
		break;
		case 7:
		draw_sprite_ext(sprite_get("uspecial_pointer"), 0, x, y-16, 1, 1, 180, c_white, 1);
		break;
		case 8:
		draw_sprite_ext(sprite_get("uspecial_pointer"), 0, x, y-16, 1, 1, 135, c_white, 1);
		break;
	}
}

}

//print(fspecial_portal)