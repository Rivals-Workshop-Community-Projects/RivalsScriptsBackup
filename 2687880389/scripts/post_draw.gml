// MunoPhone Touch code - don't touch
// should be at TOP of file
if (enable_munophone) {
	muno_event_type = 4;
	user_event(14);
}



if phone_cheats[cheat_funny_snail]{
	draw_debug_text(x, y, "woag");
}

shader_start();

// Draw upper and lower halves of body for fstrong
if ((state == PS_ATTACK_AIR) || (state == PS_ATTACK_GROUND)) {
	if ((attack == AT_FSTRONG) && (window < penalty_window)) {
		if (codename_wireframe_active) {
			fstrong_leg_sprite = sprite_get("fstrong_legs_wireframe");
		} else {
			fstrong_leg_sprite = sprite_get("fstrong_legs");
		}
		// Draw Rotom's aura if applicable
		if (codename_rotom_active) {
			shader_end();
			gpu_set_fog(true, aura_color, 0, 1);
			draw_sprite_ext(fstrong_leg_sprite, image_index,
							x, y+2, spr_dir, 1, 0,
							c_white, 1);
			draw_sprite_ext(fstrong_leg_sprite, image_index,
							x, y-2, spr_dir, 1, 0,
							c_white, 1);
			draw_sprite_ext(fstrong_leg_sprite, image_index,
							x+2, y, spr_dir, 1, 0,
							c_white, 1);
			draw_sprite_ext(fstrong_leg_sprite, image_index,
							x-2, y, spr_dir, 1, 0,
							c_white, 1);
			draw_sprite_ext(fstrong_leg_sprite, image_index,
							x+2, y+2, spr_dir, 1, 0,
							c_white, 1);
			draw_sprite_ext(fstrong_leg_sprite, image_index,
							x+2, y-2, spr_dir, 1, 0,
							c_white, 1);
			draw_sprite_ext(fstrong_leg_sprite, image_index,
							x-2, y+2, spr_dir, 1, 0,
							c_white, 1);
			draw_sprite_ext(fstrong_leg_sprite, image_index,
							x-2, y-2, spr_dir, 1, 0,
							c_white, 1);
			gpu_set_fog(false, c_white, 0, 1);
			shader_start();
		}
		// Draw the legs themselves
		draw_sprite_ext(fstrong_leg_sprite, image_index,
						x, y, spr_dir, 1, 0, c_white, 1);
		// Don't draw the muzzle flash overlay if flat shading is not selected
		if (!flat_shading_selected) {
			draw_sprite_ext(sprite_get("fstrong_legs_flash"), image_index,
								x, y, spr_dir, 1, 0, c_white, 1);
		}
		// Flash yellow while charging up like other strongs do
		shader_end();
		if (smash_charging) {
			if (smash_flash_timer >= (smash_flash_timer_max / 2)) {
				draw_sprite_ext(sprite_get("fstrong_legs_charge_mask"), 0,
								x, y, spr_dir, 1, 0, c_white, 0.5);
			}
		}
		shader_start();

		// Default alt doesn't get recolored properly
		var draw_angle = 0;
		if ((window >= 7) && (window <= 10)) {
			draw_angle = fstrong_upward_angle * spr_dir;
		}else if ((window >= 11) && (window <= 14)) {
			draw_angle = fstrong_downward_angle * spr_dir;
		} else {
			draw_angle = 0;
		}
		if (codename_wireframe_active) {
			fstrong_torso_sprite = sprite_get("fstrong_torso_wireframe");
		} else {
			fstrong_torso_sprite = sprite_get("fstrong_torso");
		}
		// Draw Rotom's aura if applicable
		if (codename_rotom_active) {
			shader_end();
			gpu_set_fog(true, aura_color, 0, 1);
			draw_sprite_ext(fstrong_torso_sprite, image_index,
							x - (4 * spr_dir), y+2 - 38, spr_dir, 1, draw_angle,
							c_white, 1);
			draw_sprite_ext(fstrong_torso_sprite, image_index,
							x - (4 * spr_dir), y-2 - 38, spr_dir, 1, draw_angle,
							c_white, 1);
			draw_sprite_ext(fstrong_torso_sprite, image_index,
							x+2 - (4 * spr_dir), y - 38, spr_dir, 1, draw_angle,
							c_white, 1);
			draw_sprite_ext(fstrong_torso_sprite, image_index,
							x-2 - (4 * spr_dir), y - 38, spr_dir, 1, draw_angle,
							c_white, 1);
			draw_sprite_ext(fstrong_torso_sprite, image_index,
							x+2 - (4 * spr_dir), y+2 - 38, spr_dir, 1, draw_angle,
							c_white, 1);
			draw_sprite_ext(fstrong_torso_sprite, image_index,
							x-2 - (4 * spr_dir), y-2 - 38, spr_dir, 1, draw_angle,
							c_white, 1);
			draw_sprite_ext(fstrong_torso_sprite, image_index,
							x+2 - (4 * spr_dir), y+2 - 38, spr_dir, 1, draw_angle,
							c_white, 1);
			draw_sprite_ext(fstrong_torso_sprite, image_index,
							x-2 - (4 * spr_dir), y-2 - 38, spr_dir, 1, draw_angle,
							c_white, 1);
			gpu_set_fog(false, c_white, 0, 1);
			shader_start();
		}
		// Draw the torso itself
		draw_sprite_ext(fstrong_torso_sprite, image_index,
				x - (4 * spr_dir), y - 38, spr_dir, 1, draw_angle, c_white, 1);
		// Don't draw the muzzle flash overlay if flat shading is not selected
		if (!flat_shading_selected) {
			draw_sprite_ext(sprite_get("fstrong_torso_flash"), image_index,
							x - (4 * spr_dir), y - 38, spr_dir, 1, draw_angle, c_white, 1);
		}
		// Flash yellow while charging up like other strongs do
		shader_end();
		if (smash_charging) {
			if (smash_flash_timer >= (smash_flash_timer_max / 2)) {
				draw_sprite_ext(sprite_get("fstrong_torso_charge_mask"), 0,
								x - (4 * spr_dir), y - 38, spr_dir, 1, draw_angle, c_white, 0.5);
			}
		}
		shader_start();
	} else if (attack == AT_UTHROW) {
		draw_sprite_ext(sprite_get("uthrow_flash"), image_index,
						x, y, spr_dir, 1, 0, c_white, 1);
	}
}

if (titanium_ally) {
	with (oPlayer) {
		if (smash_charging
			&& (soft_armor <= other.titanium_armor_value)
			&& (get_player_team(player) == get_player_team(other.player)))
		{
			draw_sprite_ext(other.shield_icon, 0,
							x, y + 10, spr_dir, 1, 0, c_white, 0.6);
		}
	}
}

// Draw big arrow once you choose a direction
if (draw_big_arrow_timer > 0) {
	var opacity = (draw_big_arrow_timer / draw_big_arrow_timer_max) * 0.6;
	draw_sprite_ext(sprite_get("big_arrow"), 0,
					draw_big_arrow_timer_x, draw_big_arrow_timer_y,
					1.8, 1.8, draw_big_arrow_angle, c_white, opacity);
}

// Draw arrows during throw
if ((attack == AT_NSPECIAL) && (window == 6)) {
	var opacity = ((get_gameplay_time() % 12) > 5)  ? 0.9 : 0.3;
	draw_sprite_ext(sprite_get("nspecial_arrows"), 0,
					x, y, spr_dir, 1, 0, c_white, opacity);
}



// Draw targetting reticle
/*set_article_color_slot(0,
				       color_get_red(hud_color),
				       color_get_green(hud_color),
				       color_get_blue(hud_color),
				       0.6);*/
/*set_article_color_slot(0,
                       energy_r,
                       energy_g,
                       energy_b,
                       0.6);*/
/*
with (asset_get("oPlayer")) {
	var stacks = 3;
	draw_sprite_ext(other.marker_sprite, stacks,
					x, y - char_height - 19, spr_dir, 1, 0, c_white, 1);
	draw_sprite_ext(other.marker_sprite, stacks,
					x, y + 2, spr_dir, -1, 0, c_white, 1);
}
*/



shader_end();

// Draw the held phone
if (phone_attacking && attack == AT_PHONE) {
	draw_sprite_ext(sprite_get("phone_open_phone_only"), image_index,
					x, y, spr_dir, 1, 0, c_white, 1);
}

user_event(12);