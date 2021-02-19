// 2B's Pre Draw

if (!pre_paused) {
	// PLEASE make a rune where this happens constantly it looks so sick
	// Updates previous position, then draws a trail behind
	if (attacking && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2 || attack == AT_USPECIAL || attack == AT_DSTRONG || attack == AT_UAIR)) {
		if (window == 1) {
			trail_1 = true;
			trail_1_gone = 0;
			trail_2 = true;
			trail_2_gone = 0;
		} else {
			trail_1_draw = true;
			trail_2_draw = true;
		}
	} else if ((!attacking || attack == AT_EXTRA_1 || (prev_attack != AT_FSPECIAL)) && state != PS_DOUBLE_JUMP && state != PS_FIRST_JUMP && state != PS_JUMPSQUAT && state != PS_WAVELAND && state != PS_AIR_DODGE) {
		trail_1 = false;
		trail_2 = false;
	}
	// This checks if the trails are enabled, if they are: it updates the positions. If not, it decrements the positions until they disappear.
	if (trail_1) {
		update_trail_pos(trail_1_pos, 0);
		update_trail_index(trail_1_index, 0);
	} else if (trail_1_draw) { 
		if (trail_1_gone < array_length(trail_1_pos)/2) {
			trail_1_gone++;
			update_trail_pos(trail_1_pos, trail_1_gone);
			update_trail_index(trail_1_index, trail_1_gone);
		} else {
			trail_1_draw = false;
		}
	}
	if (trail_2) {
		update_trail_pos(trail_2_pos, 0);
		update_trail_index(trail_2_index, 0);
	} else if (trail_2_draw) {
		if (trail_2_gone < array_length(trail_2_pos)/2) {
			trail_2_gone++;
			update_trail_pos(trail_2_pos, trail_1_gone);
			update_trail_index(trail_2_index, trail_2_gone);
		} else {
			trail_2_draw = false;
		}
	}
}
shader_start();
if (trail_1_draw) {
	draw_sprite_ext(trail_1_index[0][0], trail_1_index[0][1], trail_1_pos[0][0], trail_1_pos[0][1], trail_1_index[0][2], 1, 0, c_white, 0.6);
}
if (trail_2_draw) {
	draw_sprite_ext(trail_2_index[0][0], trail_2_index[0][1], trail_2_pos[0][0], trail_2_pos[0][1], trail_2_index[0][2], 1, 0, c_white, 0.3);
}
shader_end();

// Draws the swords, and calculates shaders for them
shader_start();
// Draw the greatsword and katana respectively
draw_sprite_ext(greatsword.sprite, greatsword.image, x + ((2 * greatsword.pos[0]) * spr_dir), y + (2 * greatsword.pos[1]), spr_dir, 1, 0, c_white, greatsword.vis);
draw_sprite_ext(katana.sprite, katana.image, x + ((2 * katana.pos[0]) * spr_dir), y + (2 * katana.pos[1]), spr_dir, 1, 0, c_white, katana.vis);
shader_end();

// This is done in pre_draw so it happens while it lands
if (window == 4 && attacking && attack == AT_USPECIAL && !free && !pre_paused && !hitpause) {
	// Transitions USPECIAL into the landing window on landing
	var dust = spawn_dust_fx(x + hsp, y + vsp, asset_get("dust_land_spr"), 24);
	if (instance_exists(dust)) {
		dust.spr_dir *= 0.5;
		dust.image_yscale = 0.5;
	}
	sound_play(landing_lag_sound);
	window++;
	window_timer = 0;
}

pre_paused = true;

#define update_trail_pos(trail_pos, gone)

	var trail_length = array_length(trail_pos) - 1;

	for (i = 0; i < trail_length; i++) {
		trail_pos[@i] = trail_pos[@i + 1];
	}
	if (gone > 0) {
		for (i = 0; i < gone; i++) {
			for (j = 0; j < trail_length; j++) {
				trail_pos[@j] = trail_pos[@j + 1];
			}
			trail_pos[@trail_length] = [x, y];
		}
	}

	trail_pos[@trail_length] = [x, y];
	
#define update_trail_index(trail_index, gone)

	var trail_length = array_length(trail_index) - 1;
	for (i = 0; i < trail_length; i++) {
		trail_index[@i] = trail_index[i + 1];
	}
	
	if (gone > 0) {
		for (i = 0; i < gone; i++) {
			for (j = 0; j < trail_length; j++) {
				trail_index[@j] = trail_index[@j + 1];
			}
			trail_index[@trail_length] = [sprite_index, image_index, spr_dir];
		}
	}
	
	trail_index[@trail_length] = [sprite_index, image_index, spr_dir];