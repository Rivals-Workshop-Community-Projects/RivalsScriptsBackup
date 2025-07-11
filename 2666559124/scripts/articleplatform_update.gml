// Barrel Update

// Gravity Control (Why isn't this a default var?)
if (free) {
	if (vsp < grav) {
		vsp += 1;
	} else if (vsp > grav) {
		vsp = grav;
	}
} else {
	vsp = 0;
}

/*if (state > 0) {
	player_id.move_cooldown[AT_FSPECIAL] = 2;
}*/

if (instance_exists(barreled_id)) {
	eye_timer++;
	struggle_x = 0;
	with (barreled_id) {
		grabbed_invisible = true;
		x = other.x;
		y = other.y + 84;
		hitpause = true;
		hitstop = 2;
		var train_opt = get_training_cpu_action();
		if (temp_level == 0) { // Handle captured struggling
			if (left_pressed) {
				other.struggle_x = -1;
				other.struggle_resist--;
			}
			if (right_pressed) {
				other.struggle_x = 1;
				other.struggle_resist--;
			}
		} else if (train_opt == CPU_FIGHT || train_opt == CPU_EVADE || train_opt == CPU_RUN) {
			with (other) { // CPU Version
				struggle_ai_timer--;
				if (struggle_ai_timer <= 0) {
					struggle_resist--;
					struggle_x = 1 - (2 * random_func(3, 2, true));
					struggle_ai_timer = struggle_ai_timer_max;
				}
			}
		}
		if (orig_knock >= 14) {
			other.hp = 0;
		}
	}
}

// If the barrel goes offscreen, destroy it
if (y >= get_stage_data(SD_BOTTOM_BLASTZONE_Y) - 88) {
	if (instance_exists(barreled_id)) {
		with (barreled_id) {
			hitpause = false;
			hitstop = 0;
			set_state(PS_HITSTUN);
			hitstop_full = 38;
			hitstun = hitstop_full;
			y = other.y;
			vsp = -13;
			barreled = false;
			has_airdodge = false;
			djumps = max_djumps;
		}
		barreled_id = noone;
	}
	sound_play(sound_get("sfx_barrel_break"));
	make_debris(true);
	destroy = true;
}

switch (state) {
	case 0: // Moving forward
		var screen_y = view_get_yview() - 90;
		if (!despawning) {
			if (moving && player_id.special_down) {
				hsp = 4 * player_id.spr_dir;
			} else {
				hsp = 0;
			}
			if (yOff < 30) {
				yOff += 2;
			}
		} else {
			if (yOff > -4) {
				yOff -= 2;
			} else {
				destroy = true;
			}
		}
		y = screen_y + yOff;
		if (dropped) {
			hsp = 0;
			state = 1;
		}
		break;
	case 1: // Dropped
		grav = 13;
		if (!can_collide) { // Drop through ceilings
			if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, asset_get("par_block"), false, true) == noone) {
				can_collide = true;
			}
		} else {
			can_be_grounded = place_meeting(x, y + 2, asset_get("par_block"));
			ignores_walls = !place_meeting(x, y + 2, asset_get("par_block"));
		}
		// Create hitbox
		if (!instance_exists(barreled_id) && free && !destroy) {
			var my_hitbox = create_hitbox(AT_FSPECIAL, 1, x, (y + vsp) + 84);
			my_hitbox.article_owner = self;
			my_hitbox.can_hit_self = true;
		}
		// Animate eyes
		if (eye_timer >= 70) {
			bar_image = 2;
			if (eye_timer > 82) {
				eye_timer = 0;
			}
		} else if (eye_timer >= 0) {
			bar_image = 1;
		} else {
			bar_image = 0;
		}
		if (!landed && !free) {
			sound_play(sound_get("sfx_barrel_land"));
			with (player_id) {
				var my_dust = spawn_hit_fx(other.x, other.y + 86, barrel_dust);
				my_dust.depth = other.depth - 1;
				if (alt != 0) {
					my_dust.uses_shader = 1;
				}
			}
			landed = true;
		} else if (free) {
			landed = false;
		}
		// Destroy when hp is zero
		if (hp <= 0 && !hitpause) {
			sound_play(sound_get("sfx_barrel_break"));
			state = 2;
		}
		// Destroy if victim struggled enough
		if (instance_exists(barreled_id) && struggle_resist <= 0) {
			with (barreled_id) {
				hitpause = false;
				hitstop = 0;
				set_state(PS_IDLE_AIR);
				vsp = -8;
				barreled = false;
			}
			barreled_id = noone;
			sound_play(sound_get("sfx_barrel_break"));
			state = 2;
		}
		break;
	case 2: // Broken
		if (instance_exists(barreled_id)) {
			barreled_id = noone;
		}
		grav = 0;
		die_timer++;
		bar_image = 3;
		mask_index = asset_get("empty_sprite");
		if (die_timer == 1) {
			make_debris(false);
		}
		if (die_timer > 160) {
			image_alpha -= 0.05;
			if (image_alpha <= 0) {
				destroy = true;
			}
		}
		break;
}

if (hit_cooldown > 0 && state < 2) {
	image_blend = c_gray;
	hit_cooldown--;
} else {
	image_blend = c_white;
}

// Determine if the barrel and captured player can be hit
is_hittable = (state == 1 && hit_cooldown == 0 && !free);
/*if (instance_exists(barreled_id)) {
	barreled_id.invincible = (!is_hittable);
}*/

if (destroy) {
	if (instance_exists(barreled_id)) {
		barreled_id.barreled = false;
		barreled_id = noone;
	}
	instance_destroy();
}

// Custom function for spawning broken barrel pieces
#define make_debris(raise_start)

if (argument[0]) {
	var spawn_start = -12;
	var first_vsp = -24;
	var second_vsp = 8;
} else {
	var spawn_start = 44;
	var first_vsp = -14;
	var second_vsp = 5;
}

var debris = create_hitbox(AT_FSPECIAL, 2, x, y + spawn_start);
debris.image_index = 0;
debris.hsp = -5 + random_func(10, 11, false);
debris.vsp = first_vsp - random_func(11, second_vsp, false);
var debris = create_hitbox(AT_FSPECIAL, 2, x - 20, y + spawn_start);
debris.image_index = 1;
debris.hsp = -3 - random_func(12, 6, false);
debris.vsp = (first_vsp + 6) - random_func(13, second_vsp - 1, false);
var debris = create_hitbox(AT_FSPECIAL, 2, x + 20, y + spawn_start);
debris.image_index = 2;
debris.hsp = 3 + random_func(14, 6, false);
debris.vsp = (first_vsp + 6) - random_func(15, second_vsp - 1, false);
