//pre_draw.gml

shader_start();

//respawn platform
if (state == PS_RESPAWN || respawn_taunt > 0)
{
    draw_sprite_ext(sprite_get("plat_pre"), game_time * plat_speed, x, y, small_sprites + 1, small_sprites + 1, 0, c_white, 1);
}

// USpecial
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_USPECIAL) {
	hurtboxID.x = x + draw_x;
	hurtboxID.y = y + draw_y;
}

// DSpecial
// Based on code written by VForce. Used with permission.
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL) {
	if (image_index >= 12 && image_index <= 16) {
		var _head_x_distance = lengthdir_x(dspecial_distance, dspecial_tilt + 90);
		var _head_y_distance = lengthdir_y(dspecial_distance, dspecial_tilt + 90);

		if (invincible || invince_time > 0 || initial_invince) {
			gpu_set_fog(1, c_white, 0, 1); 
		}
		
		var _x = x + draw_x;
		var _y = y + draw_y;
		draw_sprite_ext(sprite_get("dspecial_stem"), 0, _x, _y, 2*spr_dir, dspecial_distance, dspecial_tilt, c_white, 1);
		if (invincible || invince_time > 0 || initial_invince){
			// Properly colors stem when invincible
			shader_end();
			draw_sprite_ext(sprite_get("dspecial_stem"), 0, _x, _y, 2*spr_dir, dspecial_distance, dspecial_tilt, c_white, 0.5);
			shader_start();
		}
		
		// draw head
		draw_sprite_ext(
				sprite_get("dspecial_head"), 
				image_index - 12,
				x + _head_x_distance + draw_x, 
				y + _head_y_distance + draw_y, 
				spr_dir, 
				1, 
				dspecial_tilt, 
				c_white, 
				1);
		if (invincible || invince_time > 0 || initial_invince)
		{
			// Properly colors head when invincible
			shader_end();
			draw_sprite_ext(
					sprite_get("dspecial_head"), 
					image_index - 12, 
					x + _head_x_distance + draw_x, 
					y + _head_y_distance + draw_y, 
					spr_dir,
					1, 
					dspecial_tilt, 
					c_white, 
					0.5);
			shader_start();
		}
		
		gpu_set_fog(0, c_white, 0, 0);
		hurtboxID.image_index = clamp(floor(16 * ((dspecial_distance - dspecial_distance_min) / (dspecial_distance_max - dspecial_distance_min))), 0, 21); 
	}
	else {
		hurtboxID.image_index = image_index;
	}
	hurtboxID.x = x + draw_x;
	hurtboxID.y = y + draw_y;
}

shader_end();