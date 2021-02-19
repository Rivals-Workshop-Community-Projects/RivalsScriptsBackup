/*if wearing_hat {
    draw_sprite_ext(sprite_get("santahat_idle"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
}*/ // Christmas stuff

if (sunglasses && sprite_index != sprite_get("foxcooking") && sprite_index != sprite_get("bighurt")) {
	if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL && window == 2) {
		draw_sprite_ext(sprite_get("sg_" + sprite_name[sprite_index]), image_index, x + sunglasses_x_offset, y - sunglasses_y_offset, spr_dir, 1, fiyaa_angle - 90, c_white, 1);
	} else {
		draw_sprite_ext(sprite_get("sg_" + sprite_name[sprite_index]), image_index, x - sprite_get_xoffset(sprite_index) * spr_dir, y - sprite_get_yoffset(sprite_index), spr_dir, 1, 0, c_white, 1);
	}
}

// The things below need to be here because if I put them in the update file the filesize is too large.

// Melee Fox - Hopefully you have an IDE that lets you collapse if statements because this is huge. It's necessary for it to be huge so that I have 100%
// control over the balanced mode without messing up Falco or Melee Fox. I could manually go through and get rid of anything that's unchanged, but
// I don't want to do that, realise (for whatever reason) I need to change it, then forget to change the Melee version and accidentally break it.
if (!balanced_fox) {
	// Remember to change taunt
	if (!easter_egg_set && easter_egg_timer == 91) {
		//init
		walk_speed = 7;
		walk_accel = 0.5;
		walk_turn_time = 6;
		initial_dash_time = 11;
		initial_dash_speed = 9.2;
		dash_speed = 11;
		dash_turn_time = 10;
		dash_turn_accel = 1.5;
		dash_stop_time = 4;
		dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
		ground_friction = 0.5;

		jump_start_time = 2;
		jump_speed = 15.3;
		short_hop_speed = 9.37;
		djump_speed = 17.49;
		leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
		max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
		air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
		jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
		air_accel = .3;
		prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
		air_friction = 0.06;
		double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
		walljump_hsp = 6;
		walljump_vsp = 14;
		walljump_time = 50;
		wall_frames = 2;
		max_fall = 11.7; //maximum fall speed without fastfalling
		fast_fall = 14.21; //fast fall speed
		gravity_speed = 0.90;
		hitstun_grav = 0.6;
		knockback_adj = 100/75; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
		moonwalk_accel = 0.75;

		prat_land_time = 3;
		wave_land_time = 8;
		wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
		wave_friction = 0.08; //grounded deceleration when wavelanding

		//bair
		set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_BAIR, AG_LANDING_LAG, 10);

		set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
		set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 2);

		set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

		set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 7);
		set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

		set_num_hitboxes(AT_BAIR, 12);

		set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 16);
		set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, 8);
		set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -8);
		set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 33);
		set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 33);
		set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
		set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
		set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 361);
		set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 2.2);
		set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 2.2);
		set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 4);
		set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -7);
		set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -26);
		set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 33);
		set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 33);
		set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 1);
		set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 15);
		set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 361);
		set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 7.2);
		set_hitbox_value(AT_BAIR, 2, HG_FINAL_BASE_KNOCKBACK, 7.2);
		set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 7.2);
		set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 305);
		set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
		set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 4);
		set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -52);
		set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -28);
		set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 56);
		set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 49);
		set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 2);
		set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 15);
		set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 361);
		set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 7.2);
		set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 7.2);
		set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 305);
		set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_BAIR, 4, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 2);
		set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 15);
		set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, 8);
		set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -18);
		set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 33);
		set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 33);

		set_hitbox_value(AT_BAIR, 5, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 2);
		set_hitbox_value(AT_BAIR, 5, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 3);
		set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, -7);
		set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -36);

		set_hitbox_value(AT_BAIR, 6, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_BAIR, 6, HG_WINDOW, 2);
		set_hitbox_value(AT_BAIR, 6, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_BAIR, 6, HG_LIFETIME, 3);
		set_hitbox_value(AT_BAIR, 6, HG_HITBOX_X, -52);
		set_hitbox_value(AT_BAIR, 6, HG_HITBOX_Y, -48);
		set_hitbox_value(AT_BAIR, 6, HG_WIDTH, 56);
		set_hitbox_value(AT_BAIR, 6, HG_HEIGHT, 49);
		set_hitbox_value(AT_BAIR, 6, HG_PRIORITY, 2);
		set_hitbox_value(AT_BAIR, 6, HG_DAMAGE, 15);
		set_hitbox_value(AT_BAIR, 6, HG_ANGLE, 361);
		set_hitbox_value(AT_BAIR, 6, HG_BASE_KNOCKBACK, 7.2);
		set_hitbox_value(AT_BAIR, 6, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_BAIR, 6, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_BAIR, 6, HG_BASE_HITPAUSE, 7.2);
		set_hitbox_value(AT_BAIR, 6, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_BAIR, 6, HG_VISUAL_EFFECT, 305);
		set_hitbox_value(AT_BAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_BAIR, 7, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_BAIR, 7, HG_WINDOW, 2);
		set_hitbox_value(AT_BAIR, 7, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_BAIR, 7, HG_LIFETIME, 12);
		set_hitbox_value(AT_BAIR, 7, HG_HITBOX_X, -7);
		set_hitbox_value(AT_BAIR, 7, HG_HITBOX_Y, -26);
		set_hitbox_value(AT_BAIR, 7, HG_WIDTH, 25);
		set_hitbox_value(AT_BAIR, 7, HG_HEIGHT, 25);
		set_hitbox_value(AT_BAIR, 7, HG_PRIORITY, 2);
		set_hitbox_value(AT_BAIR, 7, HG_DAMAGE, 9);
		set_hitbox_value(AT_BAIR, 7, HG_ANGLE, 361);
		set_hitbox_value(AT_BAIR, 7, HG_BASE_KNOCKBACK, 2.2);
		set_hitbox_value(AT_BAIR, 7, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_BAIR, 7, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_BAIR, 7, HG_BASE_HITPAUSE, 2.2);
		set_hitbox_value(AT_BAIR, 7, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_BAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_BAIR, 8, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_BAIR, 8, HG_WINDOW, 2);
		set_hitbox_value(AT_BAIR, 8, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_BAIR, 8, HG_LIFETIME, 4);
		set_hitbox_value(AT_BAIR, 8, HG_HITBOX_X, -52);
		set_hitbox_value(AT_BAIR, 8, HG_HITBOX_Y, -28);
		set_hitbox_value(AT_BAIR, 8, HG_WIDTH, 48);
		set_hitbox_value(AT_BAIR, 8, HG_HEIGHT, 41);
		set_hitbox_value(AT_BAIR, 8, HG_PRIORITY, 2);
		set_hitbox_value(AT_BAIR, 8, HG_DAMAGE, 15);
		set_hitbox_value(AT_BAIR, 8, HG_ANGLE, 361);
		set_hitbox_value(AT_BAIR, 8, HG_BASE_KNOCKBACK, 2.2);
		set_hitbox_value(AT_BAIR, 8, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_BAIR, 8, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_BAIR, 8, HG_BASE_HITPAUSE, 2.2);
		set_hitbox_value(AT_BAIR, 8, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_BAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_BAIR, 9, HG_PARENT_HITBOX, 7);
		set_hitbox_value(AT_BAIR, 9, HG_WINDOW, 2);
		set_hitbox_value(AT_BAIR, 9, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_BAIR, 9, HG_LIFETIME, 12);
		set_hitbox_value(AT_BAIR, 9, HG_HITBOX_X, -7);
		set_hitbox_value(AT_BAIR, 9, HG_HITBOX_Y, -36);

		set_hitbox_value(AT_BAIR, 10, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_BAIR, 10, HG_WINDOW, 2);
		set_hitbox_value(AT_BAIR, 10, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_BAIR, 10, HG_LIFETIME, 4);
		set_hitbox_value(AT_BAIR, 10, HG_HITBOX_X, -52);
		set_hitbox_value(AT_BAIR, 10, HG_HITBOX_Y, -48);
		set_hitbox_value(AT_BAIR, 10, HG_WIDTH, 48);
		set_hitbox_value(AT_BAIR, 10, HG_HEIGHT, 41);
		set_hitbox_value(AT_BAIR, 10, HG_PRIORITY, 2);
		set_hitbox_value(AT_BAIR, 10, HG_DAMAGE, 15);
		set_hitbox_value(AT_BAIR, 10, HG_ANGLE, 361);
		set_hitbox_value(AT_BAIR, 10, HG_BASE_KNOCKBACK, 2.2);
		set_hitbox_value(AT_BAIR, 10, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_BAIR, 10, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_BAIR, 10, HG_BASE_HITPAUSE, 2.2);
		set_hitbox_value(AT_BAIR, 10, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_BAIR, 10, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_BAIR, 11, HG_PARENT_HITBOX, 10);
		set_hitbox_value(AT_BAIR, 11, HG_WINDOW, 2);
		set_hitbox_value(AT_BAIR, 11, HG_WINDOW_CREATION_FRAME, 8);
		set_hitbox_value(AT_BAIR, 11, HG_LIFETIME, 8);
		set_hitbox_value(AT_BAIR, 11, HG_HITBOX_X, -38);
		set_hitbox_value(AT_BAIR, 11, HG_HITBOX_Y, -28);

		set_hitbox_value(AT_BAIR, 12, HG_PARENT_HITBOX, 10);
		set_hitbox_value(AT_BAIR, 12, HG_WINDOW, 2);
		set_hitbox_value(AT_BAIR, 12, HG_WINDOW_CREATION_FRAME, 8);
		set_hitbox_value(AT_BAIR, 12, HG_LIFETIME, 8);
		set_hitbox_value(AT_BAIR, 12, HG_HITBOX_X, -38);
		set_hitbox_value(AT_BAIR, 12, HG_HITBOX_Y, -48);

		//dair
		set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_DAIR, AG_LANDING_LAG, 9);
		
		set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
		set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 3);

		set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

		set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 25);
		set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
		set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

		set_num_hitboxes(AT_DAIR, 28);

		set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 2);
		set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 40);
		set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 40);
		set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 3);
		set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 3.7);
		set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DAIR, 1, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 3.7);
		set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 0);

		set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 6);
		set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -15);
		set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 53);
		set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 50);
		set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
		set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 2);
		set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 3.3);
		set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DAIR, 2, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1.2);
		set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 3.3);
		set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 0);

		set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 40);
		set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 40);
		set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 1);
		set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 3);
		set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 3.7);
		set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DAIR, 3, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 3.7);
		set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 0);

		set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 3);
		set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 53);
		set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 50);
		set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2);
		set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 2);
		set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 3.3);
		set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DAIR, 4, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 3.3);
		set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 0);

		set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 2);
		set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 1);

		set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 6);
		set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -15);
		set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 1);

		set_hitbox_value(AT_DAIR, 7, HG_PARENT_HITBOX, 3);
		set_hitbox_value(AT_DAIR, 7, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 7, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 1);

		set_hitbox_value(AT_DAIR, 8, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_DAIR, 8, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 8, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 8, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_DAIR, 8, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 8, HG_HITBOX_X, 3);
		set_hitbox_value(AT_DAIR, 8, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, 1);

		set_hitbox_value(AT_DAIR, 9, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DAIR, 9, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 9, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 9, HG_WINDOW_CREATION_FRAME, 6);
		set_hitbox_value(AT_DAIR, 9, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 9, HG_HITBOX_X, 2);
		set_hitbox_value(AT_DAIR, 9, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_DAIR, 9, HG_HITBOX_GROUP, 2);

		set_hitbox_value(AT_DAIR, 10, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_DAIR, 10, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 10, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 10, HG_WINDOW_CREATION_FRAME, 6);
		set_hitbox_value(AT_DAIR, 10, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 10, HG_HITBOX_X, 6);
		set_hitbox_value(AT_DAIR, 10, HG_HITBOX_Y, -15);
		set_hitbox_value(AT_DAIR, 10, HG_HITBOX_GROUP, 2);

		set_hitbox_value(AT_DAIR, 11, HG_PARENT_HITBOX, 3);
		set_hitbox_value(AT_DAIR, 11, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 11, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 11, HG_WINDOW_CREATION_FRAME, 7);
		set_hitbox_value(AT_DAIR, 11, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 11, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 11, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_DAIR, 11, HG_HITBOX_GROUP, 2);

		set_hitbox_value(AT_DAIR, 12, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_DAIR, 12, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 12, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 12, HG_WINDOW_CREATION_FRAME, 7);
		set_hitbox_value(AT_DAIR, 12, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 12, HG_HITBOX_X, 3);
		set_hitbox_value(AT_DAIR, 12, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DAIR, 12, HG_HITBOX_GROUP, 2);

		set_hitbox_value(AT_DAIR, 13, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DAIR, 13, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 13, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 13, HG_WINDOW_CREATION_FRAME, 9);
		set_hitbox_value(AT_DAIR, 13, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 13, HG_HITBOX_X, 2);
		set_hitbox_value(AT_DAIR, 13, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_DAIR, 13, HG_HITBOX_GROUP, 3);

		set_hitbox_value(AT_DAIR, 14, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_DAIR, 14, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 14, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 14, HG_WINDOW_CREATION_FRAME, 9);
		set_hitbox_value(AT_DAIR, 14, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 14, HG_HITBOX_X, 6);
		set_hitbox_value(AT_DAIR, 14, HG_HITBOX_Y, -15);
		set_hitbox_value(AT_DAIR, 14, HG_HITBOX_GROUP, 3);

		set_hitbox_value(AT_DAIR, 15, HG_PARENT_HITBOX, 3);
		set_hitbox_value(AT_DAIR, 15, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 15, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 15, HG_WINDOW_CREATION_FRAME, 10);
		set_hitbox_value(AT_DAIR, 15, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 15, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 15, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_DAIR, 15, HG_HITBOX_GROUP, 3);

		set_hitbox_value(AT_DAIR, 16, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_DAIR, 16, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 16, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 16, HG_WINDOW_CREATION_FRAME, 10);
		set_hitbox_value(AT_DAIR, 16, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 16, HG_HITBOX_X, 3);
		set_hitbox_value(AT_DAIR, 16, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DAIR, 16, HG_HITBOX_GROUP, 3);

		set_hitbox_value(AT_DAIR, 17, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DAIR, 17, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 17, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 17, HG_WINDOW_CREATION_FRAME, 12);
		set_hitbox_value(AT_DAIR, 17, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 17, HG_HITBOX_X, 2);
		set_hitbox_value(AT_DAIR, 17, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_DAIR, 17, HG_HITBOX_GROUP, 4);

		set_hitbox_value(AT_DAIR, 18, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_DAIR, 18, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 18, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 18, HG_WINDOW_CREATION_FRAME, 12);
		set_hitbox_value(AT_DAIR, 18, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 18, HG_HITBOX_X, 6);
		set_hitbox_value(AT_DAIR, 18, HG_HITBOX_Y, -15);
		set_hitbox_value(AT_DAIR, 18, HG_HITBOX_GROUP, 4);

		set_hitbox_value(AT_DAIR, 19, HG_PARENT_HITBOX, 3);
		set_hitbox_value(AT_DAIR, 19, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 19, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 19, HG_WINDOW_CREATION_FRAME, 13);
		set_hitbox_value(AT_DAIR, 19, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 19, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 19, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_DAIR, 19, HG_HITBOX_GROUP, 4);

		set_hitbox_value(AT_DAIR, 20, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_DAIR, 20, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 20, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 20, HG_WINDOW_CREATION_FRAME, 13);
		set_hitbox_value(AT_DAIR, 20, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 20, HG_HITBOX_X, 3);
		set_hitbox_value(AT_DAIR, 20, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DAIR, 20, HG_HITBOX_GROUP, 4);

		set_hitbox_value(AT_DAIR, 21, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DAIR, 21, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 21, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 21, HG_WINDOW_CREATION_FRAME, 15);
		set_hitbox_value(AT_DAIR, 21, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 21, HG_HITBOX_X, 2);
		set_hitbox_value(AT_DAIR, 21, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_DAIR, 21, HG_HITBOX_GROUP, 5);

		set_hitbox_value(AT_DAIR, 22, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_DAIR, 22, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 22, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 22, HG_WINDOW_CREATION_FRAME, 15);
		set_hitbox_value(AT_DAIR, 22, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 22, HG_HITBOX_X, 6);
		set_hitbox_value(AT_DAIR, 22, HG_HITBOX_Y, -15);
		set_hitbox_value(AT_DAIR, 22, HG_HITBOX_GROUP, 5);

		set_hitbox_value(AT_DAIR, 23, HG_PARENT_HITBOX, 3);
		set_hitbox_value(AT_DAIR, 23, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 23, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 23, HG_WINDOW_CREATION_FRAME, 16);
		set_hitbox_value(AT_DAIR, 23, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 23, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 23, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_DAIR, 23, HG_HITBOX_GROUP, 5);

		set_hitbox_value(AT_DAIR, 24, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_DAIR, 24, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 24, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 24, HG_WINDOW_CREATION_FRAME, 16);
		set_hitbox_value(AT_DAIR, 24, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 24, HG_HITBOX_X, 3);
		set_hitbox_value(AT_DAIR, 24, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DAIR, 24, HG_HITBOX_GROUP, 5);

		set_hitbox_value(AT_DAIR, 25, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DAIR, 25, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 25, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 25, HG_WINDOW_CREATION_FRAME, 18);
		set_hitbox_value(AT_DAIR, 25, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 25, HG_HITBOX_X, 2);
		set_hitbox_value(AT_DAIR, 25, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_DAIR, 25, HG_HITBOX_GROUP, 6);

		set_hitbox_value(AT_DAIR, 26, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_DAIR, 26, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 26, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 26, HG_WINDOW_CREATION_FRAME, 18);
		set_hitbox_value(AT_DAIR, 26, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 26, HG_HITBOX_X, 6);
		set_hitbox_value(AT_DAIR, 26, HG_HITBOX_Y, -15);
		set_hitbox_value(AT_DAIR, 26, HG_HITBOX_GROUP, 6);

		set_hitbox_value(AT_DAIR, 27, HG_PARENT_HITBOX, 3);
		set_hitbox_value(AT_DAIR, 27, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 27, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 27, HG_WINDOW_CREATION_FRAME, 19);
		set_hitbox_value(AT_DAIR, 27, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 27, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 27, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_DAIR, 27, HG_HITBOX_GROUP, 6);

		set_hitbox_value(AT_DAIR, 28, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_DAIR, 28, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 28, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 28, HG_WINDOW_CREATION_FRAME, 19);
		set_hitbox_value(AT_DAIR, 28, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 28, HG_HITBOX_X, 3);
		set_hitbox_value(AT_DAIR, 28, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DAIR, 28, HG_HITBOX_GROUP, 6);
		
		//dattack
		set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
		set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

		set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 12);
		set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 2);
		set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

		set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 13);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 5);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);

		set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 22);
		set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 6);
		set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

		set_num_hitboxes(AT_DATTACK, 2);

		set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
		set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 24);
		set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -22);
		set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 64);
		set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 35);
		set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
		set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 7);
		set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 72);
		set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
		set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.45);
		set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.45);
		set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
		set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 9);
		set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 19);
		set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -22);
		set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 44);
		set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 25);
		set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 2);
		set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
		set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 5);
		set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 72);
		set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 0.1);
		set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.45);
		set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 0.1);
		set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.45);
		set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		//dspecial
		set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
		set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
		set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
		set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
		set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
		set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));

		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, 0);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("fox_shine"));
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HITPAUSE_FRAME, 1);

		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 18);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 2);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 19);
		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
		set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 0);


		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_INVINCIBILITY, 2);
		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);

		set_num_hitboxes(AT_DSPECIAL, 1);

		set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 1);
		set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 70);
		set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 70);
		set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 5);
		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 3);
		set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.8);
		set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 0);
		set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 20);

		//dstrong
		set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
		set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
		set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
		set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

		set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);

		set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
		set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

		set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
		set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);

		set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 11);
		set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);

		set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 28);
		set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 10);
		set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 0);

		set_num_hitboxes(AT_DSTRONG, 8);

		set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
		set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
		set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 20);
		set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -8);
		set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 40);
		set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 30);
		set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
		set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 12);
		set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 361);
		set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 6.1);
		set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 6.1);
		set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

		set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
		set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 36);
		set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -8);
		set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 50);
		set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 50);
		set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
		set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
		set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 15);
		set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 25);
		set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7.2);
		set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 7.2);
		set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

		set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
		set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
		set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -36);
		set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -8);

		set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
		set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
		set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -20);
		set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -8);

		set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 3);
		set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 3);
		set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 20);
		set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -8);
		set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 40);
		set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 25);
		set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 0);
		set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 1);
		set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 12);
		set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 361);
		set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 6.1);
		set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 6.1);
		set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

		set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 3);
		set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 3);
		set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 36);
		set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -8);
		set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 40);
		set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 40);
		set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 0);
		set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 2);
		set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 15);
		set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 25);
		set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE_FLIPPER, 7);
		set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 7.2);
		set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 7.2);
		set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

		set_hitbox_value(AT_DSTRONG, 7, HG_PARENT_HITBOX, 6);
		set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 3);
		set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 3);
		set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, -36);
		set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -8);

		set_hitbox_value(AT_DSTRONG, 8, HG_PARENT_HITBOX, 5);
		set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW, 3);
		set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_DSTRONG, 8, HG_LIFETIME, 3);
		set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_X, -20);
		set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_Y, -8);

		//dtilt
		set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
		set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

		set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
		set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 5);

		set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

		set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

		set_num_hitboxes(AT_DTILT, 6);

		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 1);
		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 30);
		set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -12);
		set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 25);
		set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 20);
		set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
		set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 10);
		set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 70);
		set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 11.2);
		set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.625);
		set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 11.2);
		set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.625);
		set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 1);
		set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 40);
		set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -11);
		set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 25);
		set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 20);
		set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
		set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 10);
		set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 80);
		set_hitbox_value(AT_DTILT, 2, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 10.7);
		set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.625);
		set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 10.7);
		set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.625);
		set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 2);
		set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 1);
		set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 48);
		set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -9);
		set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 30);
		set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 25);
		set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 2);
		set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 10);
		set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 90);
		set_hitbox_value(AT_DTILT, 3, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 10.5);
		set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, 0.625);
		set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 10.5);
		set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, 0.625);
		set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 2);
		set_hitbox_value(AT_DTILT, 4, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 2);
		set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, 46);
		set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -11);
		set_hitbox_value(AT_DTILT, 4, HG_WIDTH, 35);
		set_hitbox_value(AT_DTILT, 4, HG_HEIGHT, 29);
		set_hitbox_value(AT_DTILT, 4, HG_SHAPE, 2);
		set_hitbox_value(AT_DTILT, 4, HG_PRIORITY, 3);
		set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 10);
		set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 70);
		set_hitbox_value(AT_DTILT, 4, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 11.2);
		set_hitbox_value(AT_DTILT, 4, HG_KNOCKBACK_SCALING, 0.625);
		set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 11.2);
		set_hitbox_value(AT_DTILT, 4, HG_HITPAUSE_SCALING, 0.625);
		set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_DTILT, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DTILT, 5, HG_WINDOW, 2);
		set_hitbox_value(AT_DTILT, 5, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_DTILT, 5, HG_LIFETIME, 2);
		set_hitbox_value(AT_DTILT, 5, HG_HITBOX_X, 58);
		set_hitbox_value(AT_DTILT, 5, HG_HITBOX_Y, -11);
		set_hitbox_value(AT_DTILT, 5, HG_WIDTH, 38);
		set_hitbox_value(AT_DTILT, 5, HG_HEIGHT, 29);
		set_hitbox_value(AT_DTILT, 5, HG_SHAPE, 2);
		set_hitbox_value(AT_DTILT, 5, HG_PRIORITY, 1);
		set_hitbox_value(AT_DTILT, 5, HG_DAMAGE, 10);
		set_hitbox_value(AT_DTILT, 5, HG_ANGLE, 80);
		set_hitbox_value(AT_DTILT, 5, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DTILT, 5, HG_BASE_KNOCKBACK, 10.7);
		set_hitbox_value(AT_DTILT, 5, HG_KNOCKBACK_SCALING, 0.625);
		set_hitbox_value(AT_DTILT, 5, HG_BASE_HITPAUSE, 10.7);
		set_hitbox_value(AT_DTILT, 5, HG_HITPAUSE_SCALING, 0.625);
		set_hitbox_value(AT_DTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_DTILT, 6, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DTILT, 6, HG_WINDOW, 2);
		set_hitbox_value(AT_DTILT, 6, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_DTILT, 6, HG_LIFETIME, 2);
		set_hitbox_value(AT_DTILT, 6, HG_HITBOX_X, 68);
		set_hitbox_value(AT_DTILT, 6, HG_HITBOX_Y, -9);
		set_hitbox_value(AT_DTILT, 6, HG_WIDTH, 55);
		set_hitbox_value(AT_DTILT, 6, HG_HEIGHT, 33);
		set_hitbox_value(AT_DTILT, 6, HG_SHAPE, 2);
		set_hitbox_value(AT_DTILT, 6, HG_PRIORITY, 2);
		set_hitbox_value(AT_DTILT, 6, HG_DAMAGE, 10);
		set_hitbox_value(AT_DTILT, 6, HG_ANGLE, 90);
		set_hitbox_value(AT_DTILT, 6, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DTILT, 6, HG_BASE_KNOCKBACK, 10.5);
		set_hitbox_value(AT_DTILT, 6, HG_KNOCKBACK_SCALING, 0.625);
		set_hitbox_value(AT_DTILT, 6, HG_BASE_HITPAUSE, 10.5);
		set_hitbox_value(AT_DTILT, 6, HG_HITPAUSE_SCALING, 0.625);
		set_hitbox_value(AT_DTILT, 6, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_DTILT, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		//fair
		set_attack_value(AT_FAIR, AG_CATEGORY, 1);
		set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
		set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_FAIR, AG_USES_CUSTOM_GRAVITY, 0);
		set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_FAIR, AG_LANDING_LAG, 11);
		set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

		set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
		set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 4);

		set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 40);
		set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 14);
		set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

		set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 14);
		set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 16);
		set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

		sprite_change_offset("fair", 60, 70);

		set_num_hitboxes(AT_FAIR, 5);

		set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
		set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 30);
		set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -34);
		set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 70);
		set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 53);
		set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 2);
		set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);
		set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
		set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);
		set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 0.7);
		set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 0.7);
		set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 10);
		set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 30);
		set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -34);
		set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 70);
		set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 53);
		set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 2);
		set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 5);
		set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 5);
		set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 361);
		set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 0.1);
		set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 0.1);
		set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);

		set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
		set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
		set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 18);
		set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 30);
		set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -34);
		set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 70);
		set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 53);
		set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 2);
		set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 5);
		set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 6);
		set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 361);
		set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 0.2);
		set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 0.2);
		set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 2);

		set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
		set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
		set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 27);
		set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 30);
		set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -34);
		set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 70);
		set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 53);
		set_hitbox_value(AT_FAIR, 4, HG_SHAPE, 2);
		set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 5);
		set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 4);
		set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 361);
		set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 0.1);
		set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 0.1);
		set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, 3);

		set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 2);
		set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 3);
		set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 37);
		set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 30);
		set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -34);
		set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 70);
		set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 53);
		set_hitbox_value(AT_FAIR, 5, HG_SHAPE, 2);
		set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 5);
		set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 3);
		set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 361);
		set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 0.2);
		set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 0.2);
		set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_FAIR, 5, HG_HITBOX_GROUP, 4);

		//fspecial
		var bspeed = 85;

		set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
		set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_FSPECIAL, AG_LANDING_LAG, 100);
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
		set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
		set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
		set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
		set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
		set_attack_value(AT_FSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));

		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.45);
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("fox_illusion_swoosh"));
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 18);

		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, bspeed);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 1);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, (bspeed*(2.1/18.72)));
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);

		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, ((bspeed*(2.1/18.72))/22));
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, ((bspeed*(1.93/18.72))/29));

		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 18);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.36);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, ((bspeed*(2.1/18.72))/22));
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, ((bspeed*(1.93/18.72))/29));

		set_num_hitboxes(AT_FSPECIAL, 4);

		set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 2);
		set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 38);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 38);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
		set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 7);
		set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 80);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("empty"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, false);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);

		set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 2);
		set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 120);
		set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 38);
		set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
		set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
		set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 7);
		set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 80);
		set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("empty"));
		set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
		set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
		set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, true);
		set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, false);
		set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, false);
		set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
		set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);

		//fstrong
		set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
		set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
		set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
		set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

		set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

		set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
		
		set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 11);
		set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 10);
		set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
		set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

		set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 17);
		set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 0);

		set_num_hitboxes(AT_FSTRONG, 15);

		set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 8);
		set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -24);
		set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 28);
		set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 28);
		set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
		set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 15);
		set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
		set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7.5);
		set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.525);
		set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 7.5);
		set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.525);
		set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

		set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
		set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 5);
		set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -30);

		set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 2);
		set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 15);
		set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -45);
		set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 40);
		set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 40);
		set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
		set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 15);
		set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 361);
		set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 7.5);
		set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.525);
		set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 7.5);
		set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0.525);
		set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

		set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 3);
		set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 10);
		set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -28);

		set_hitbox_value(AT_FSTRONG, 5, HG_PARENT_HITBOX, 3);
		set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 3);
		set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 28);
		set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -40);

		set_hitbox_value(AT_FSTRONG, 6, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 4);
		set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 16);
		set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, -29);

		set_hitbox_value(AT_FSTRONG, 7, HG_PARENT_HITBOX, 3);
		set_hitbox_value(AT_FSTRONG, 7, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 7, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_FSTRONG, 7, HG_LIFETIME, 4);
		set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_X, 37);
		set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_Y, -35);

		set_hitbox_value(AT_FSTRONG, 8, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_FSTRONG, 8, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 8, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_FSTRONG, 8, HG_LIFETIME, 4);
		set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_X, 20);
		set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_Y, -24);

		set_hitbox_value(AT_FSTRONG, 9, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FSTRONG, 9, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 9, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_FSTRONG, 9, HG_LIFETIME, 4);
		set_hitbox_value(AT_FSTRONG, 9, HG_HITBOX_X, 45);
		set_hitbox_value(AT_FSTRONG, 9, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_FSTRONG, 9, HG_WIDTH, 40);
		set_hitbox_value(AT_FSTRONG, 9, HG_HEIGHT, 40);
		set_hitbox_value(AT_FSTRONG, 9, HG_PRIORITY, 3);
		set_hitbox_value(AT_FSTRONG, 9, HG_DAMAGE, 15);
		set_hitbox_value(AT_FSTRONG, 9, HG_ANGLE, 361);
		set_hitbox_value(AT_FSTRONG, 9, HG_BASE_KNOCKBACK, 7.5);
		set_hitbox_value(AT_FSTRONG, 9, HG_KNOCKBACK_SCALING, 0.525);
		set_hitbox_value(AT_FSTRONG, 9, HG_BASE_HITPAUSE, 7.5);
		set_hitbox_value(AT_FSTRONG, 9, HG_HITPAUSE_SCALING, 0.525);
		set_hitbox_value(AT_FSTRONG, 9, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_FSTRONG, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

		set_hitbox_value(AT_FSTRONG, 10, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FSTRONG, 10, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 10, HG_WINDOW_CREATION_FRAME, 8);
		set_hitbox_value(AT_FSTRONG, 10, HG_LIFETIME, 3);
		set_hitbox_value(AT_FSTRONG, 10, HG_HITBOX_X, 0);
		set_hitbox_value(AT_FSTRONG, 10, HG_HITBOX_Y, -24);
		set_hitbox_value(AT_FSTRONG, 10, HG_WIDTH, 28);
		set_hitbox_value(AT_FSTRONG, 10, HG_HEIGHT, 28);
		set_hitbox_value(AT_FSTRONG, 10, HG_PRIORITY, 3);
		set_hitbox_value(AT_FSTRONG, 10, HG_DAMAGE, 12);
		set_hitbox_value(AT_FSTRONG, 10, HG_ANGLE, 361);
		set_hitbox_value(AT_FSTRONG, 10, HG_BASE_KNOCKBACK, 7.3);
		set_hitbox_value(AT_FSTRONG, 10, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_FSTRONG, 10, HG_BASE_HITPAUSE, 7.3);
		set_hitbox_value(AT_FSTRONG, 10, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_FSTRONG, 10, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_FSTRONG, 11, HG_PARENT_HITBOX, 10);
		set_hitbox_value(AT_FSTRONG, 11, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 11, HG_WINDOW_CREATION_FRAME, 8);
		set_hitbox_value(AT_FSTRONG, 11, HG_LIFETIME, 2);
		set_hitbox_value(AT_FSTRONG, 11, HG_HITBOX_X, 20);
		set_hitbox_value(AT_FSTRONG, 11, HG_HITBOX_Y, -24);

		set_hitbox_value(AT_FSTRONG, 12, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FSTRONG, 12, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 12, HG_WINDOW_CREATION_FRAME, 8);
		set_hitbox_value(AT_FSTRONG, 12, HG_LIFETIME, 2);
		set_hitbox_value(AT_FSTRONG, 12, HG_HITBOX_X, 45);
		set_hitbox_value(AT_FSTRONG, 12, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_FSTRONG, 12, HG_WIDTH, 40);
		set_hitbox_value(AT_FSTRONG, 12, HG_HEIGHT, 40);
		set_hitbox_value(AT_FSTRONG, 12, HG_PRIORITY, 3);
		set_hitbox_value(AT_FSTRONG, 12, HG_DAMAGE, 12);
		set_hitbox_value(AT_FSTRONG, 12, HG_ANGLE, 361);
		set_hitbox_value(AT_FSTRONG, 12, HG_BASE_KNOCKBACK, 7.3);
		set_hitbox_value(AT_FSTRONG, 12, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_FSTRONG, 12, HG_BASE_HITPAUSE, 7.3);
		set_hitbox_value(AT_FSTRONG, 12, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_FSTRONG, 12, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_FSTRONG, 13, HG_PARENT_HITBOX, 10);
		set_hitbox_value(AT_FSTRONG, 13, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 13, HG_WINDOW_CREATION_FRAME, 8);
		set_hitbox_value(AT_FSTRONG, 13, HG_LIFETIME, 3);
		set_hitbox_value(AT_FSTRONG, 13, HG_HITBOX_X, 0);
		set_hitbox_value(AT_FSTRONG, 13, HG_HITBOX_Y, -24);

		set_hitbox_value(AT_FSTRONG, 14, HG_PARENT_HITBOX, 10);
		set_hitbox_value(AT_FSTRONG, 14, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 14, HG_WINDOW_CREATION_FRAME, 9);
		set_hitbox_value(AT_FSTRONG, 14, HG_LIFETIME, 3);
		set_hitbox_value(AT_FSTRONG, 14, HG_HITBOX_X, 20);
		set_hitbox_value(AT_FSTRONG, 14, HG_HITBOX_Y, -20);

		set_hitbox_value(AT_FSTRONG, 15, HG_PARENT_HITBOX, 12);
		set_hitbox_value(AT_FSTRONG, 15, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 15, HG_WINDOW_CREATION_FRAME, 9);
		set_hitbox_value(AT_FSTRONG, 15, HG_LIFETIME, 3);
		set_hitbox_value(AT_FSTRONG, 15, HG_HITBOX_X, 45);
		set_hitbox_value(AT_FSTRONG, 15, HG_HITBOX_Y, -20);

		//ftilt
		set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
		set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

		set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
		set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 3);

		set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

		set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 18);
		set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

		set_num_hitboxes(AT_FTILT, 2);

		set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 2);
		set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 6);
		set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -22);
		set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 65);
		set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 42);
		set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 9);
		set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
		set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 2.5);
		set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 2.5);
		set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 38);
		set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -29);
		set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 70);
		set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 28);
		set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
		set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
		set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 9);
		set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 361);
		set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 2.5);
		set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 2.5);
		set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		//ftilt_down
		set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("ftilt_down"));
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("ftilt_down_hurt"));

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 3);

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);

		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 18);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

		set_num_hitboxes(AT_EXTRA_3, 5);

		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -18);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 50);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 51);;
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 9);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 22);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -14);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 95);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 50);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 9);
		set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 3);
		set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X, 14);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_EXTRA_3, 3, HG_WIDTH, 22);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HEIGHT, 22);
		set_hitbox_value(AT_EXTRA_3, 3, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_3, 3, HG_DAMAGE, 9);
		set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 3, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_HITPAUSE, 2);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 4, HG_LIFETIME, 3);
		set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_X, 26);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_Y, -23);
		set_hitbox_value(AT_EXTRA_3, 4, HG_WIDTH, 31);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HEIGHT, 31);
		set_hitbox_value(AT_EXTRA_3, 4, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_3, 4, HG_DAMAGE, 9);
		set_hitbox_value(AT_EXTRA_3, 4, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 4, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_HITPAUSE, 2);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_3, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 5, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 5, HG_LIFETIME, 3);
		set_hitbox_value(AT_EXTRA_3, 5, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_X, 52);
		set_hitbox_value(AT_EXTRA_3, 5, HG_HITBOX_Y, -8);
		set_hitbox_value(AT_EXTRA_3, 5, HG_WIDTH, 30);
		set_hitbox_value(AT_EXTRA_3, 5, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_3, 5, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_3, 5, HG_DAMAGE, 9);
		set_hitbox_value(AT_EXTRA_3, 5, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_3, 5, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_3, 5, HG_BASE_HITPAUSE, 2);
		set_hitbox_value(AT_EXTRA_3, 5, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_3, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		//ftilt_up
		set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("ftilt_up"));
		set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("ftilt_up_hurt"));

		set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
		set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 3);

		set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

		set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 18);
		set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

		set_num_hitboxes(AT_EXTRA_2, 6);

		set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 12);
		set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -34);
		set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 59);
		set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 33);;
		set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 9);
		set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 2.5);
		set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 2.5);
		set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_EXTRA_2, 2, HG_LIFETIME, 1);
		set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_X, 6);
		set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_Y, -42);
		set_hitbox_value(AT_EXTRA_2, 2, HG_WIDTH, 60);
		set_hitbox_value(AT_EXTRA_2, 2, HG_HEIGHT, 40);
		set_hitbox_value(AT_EXTRA_2, 2, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_2, 2, HG_DAMAGE, 9);
		set_hitbox_value(AT_EXTRA_2, 2, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_2, 2, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_HITPAUSE, 2.5);
		set_hitbox_value(AT_EXTRA_2, 2, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_2, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_2, 3, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_2, 3, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_EXTRA_2, 3, HG_LIFETIME, 1);
		set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_X, 36);
		set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_Y, -52);
		set_hitbox_value(AT_EXTRA_2, 3, HG_WIDTH, 60);
		set_hitbox_value(AT_EXTRA_2, 3, HG_HEIGHT, 40);
		set_hitbox_value(AT_EXTRA_2, 3, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_2, 3, HG_DAMAGE, 9);
		set_hitbox_value(AT_EXTRA_2, 3, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_2, 3, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_2, 3, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_2, 3, HG_BASE_HITPAUSE, 2.5);
		set_hitbox_value(AT_EXTRA_2, 3, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_2, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_EXTRA_2, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_2, 4, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_2, 4, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_2, 4, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_EXTRA_2, 4, HG_HITBOX_X, 19);
		set_hitbox_value(AT_EXTRA_2, 4, HG_HITBOX_Y, -28);
		set_hitbox_value(AT_EXTRA_2, 4, HG_WIDTH, 25);
		set_hitbox_value(AT_EXTRA_2, 4, HG_HEIGHT, 25);
		set_hitbox_value(AT_EXTRA_2, 4, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_2, 4, HG_DAMAGE, 9);
		set_hitbox_value(AT_EXTRA_2, 4, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_2, 4, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_2, 4, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_2, 4, HG_BASE_HITPAUSE, 2.5);
		set_hitbox_value(AT_EXTRA_2, 4, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_2, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_EXTRA_2, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_2, 5, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_2, 5, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_2, 5, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_EXTRA_2, 5, HG_HITBOX_X, 31);
		set_hitbox_value(AT_EXTRA_2, 5, HG_HITBOX_Y, -34);
		set_hitbox_value(AT_EXTRA_2, 5, HG_WIDTH, 30);
		set_hitbox_value(AT_EXTRA_2, 5, HG_HEIGHT, 30);
		set_hitbox_value(AT_EXTRA_2, 5, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_2, 5, HG_DAMAGE, 9);
		set_hitbox_value(AT_EXTRA_2, 5, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_2, 5, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_2, 5, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_2, 5, HG_BASE_HITPAUSE, 2.5);
		set_hitbox_value(AT_EXTRA_2, 5, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_2, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_EXTRA_2, 6, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_2, 6, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_2, 6, HG_LIFETIME, 2);
		set_hitbox_value(AT_EXTRA_2, 6, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_EXTRA_2, 6, HG_HITBOX_X, 54);
		set_hitbox_value(AT_EXTRA_2, 6, HG_HITBOX_Y, -52);
		set_hitbox_value(AT_EXTRA_2, 6, HG_WIDTH, 27);
		set_hitbox_value(AT_EXTRA_2, 6, HG_HEIGHT, 27);
		set_hitbox_value(AT_EXTRA_2, 6, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_2, 6, HG_DAMAGE, 9);
		set_hitbox_value(AT_EXTRA_2, 6, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_2, 6, HG_BASE_KNOCKBACK, 2);
		set_hitbox_value(AT_EXTRA_2, 6, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_2, 6, HG_BASE_HITPAUSE, 2.5);
		set_hitbox_value(AT_EXTRA_2, 6, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_2, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		//jab
		set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
		set_attack_value(AT_JAB, AG_NUM_WINDOWS, 18);
		set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
		
		set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 1);
		set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
		
		set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
		
		set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 13);
		set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 0);
		set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);
		set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 0);
		
		set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 7);
		set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
		
		set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 8);
		
		set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 0);
		set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 9);
		set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 0);
		
		set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 11);
		set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
		
		set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 12);
		
		set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 13);
		set_window_value(AT_JAB, 9, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_JAB, 9, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
		set_window_value(AT_JAB, 9, AG_WINDOW_SFX_FRAME, 5);
		
		set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 15);
		
		set_window_value(AT_JAB, 11, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAME_START, 16);
		set_window_value(AT_JAB, 11, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_JAB, 11, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
		set_window_value(AT_JAB, 11, AG_WINDOW_SFX_FRAME, 5);
		
		set_window_value(AT_JAB, 12, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_JAB, 12, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_JAB, 12, AG_WINDOW_ANIM_FRAME_START, 18);
		
		set_window_value(AT_JAB, 13, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_JAB, 13, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_JAB, 13, AG_WINDOW_ANIM_FRAME_START, 19);
		set_window_value(AT_JAB, 13, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_JAB, 13, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
		set_window_value(AT_JAB, 13, AG_WINDOW_SFX_FRAME, 5);
		
		set_window_value(AT_JAB, 14, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_JAB, 14, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_JAB, 14, AG_WINDOW_ANIM_FRAME_START, 21);
		
		set_window_value(AT_JAB, 15, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_JAB, 15, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_JAB, 15, AG_WINDOW_ANIM_FRAME_START, 22);
		set_window_value(AT_JAB, 15, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_JAB, 15, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
		set_window_value(AT_JAB, 15, AG_WINDOW_SFX_FRAME, 5);
		
		set_window_value(AT_JAB, 16, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_JAB, 16, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_JAB, 16, AG_WINDOW_ANIM_FRAME_START, 24);
		
		set_window_value(AT_JAB, 17, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_JAB, 17, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_JAB, 17, AG_WINDOW_ANIM_FRAME_START, 25);
		
		set_window_value(AT_JAB, 18, AG_WINDOW_LENGTH, 9);
		set_window_value(AT_JAB, 18, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_JAB, 18, AG_WINDOW_ANIM_FRAME_START, 27);
		set_window_value(AT_JAB, 18, AG_WINDOW_HAS_WHIFFLAG, 1);

		set_num_hitboxes(AT_JAB, 16);

		set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 1);
		set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 8);
		set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -29);
		set_hitbox_value(AT_JAB, 1, HG_WIDTH, 35);
		set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 35);
		set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
		set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
		set_hitbox_value(AT_JAB, 1, HG_ANGLE, 70);
		set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 0.1);
		set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 0.1);
		set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 0);

		set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_JAB, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 1);
		set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 38);
		set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -29);
		set_hitbox_value(AT_JAB, 2, HG_WIDTH, 80);
		set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 35);
		set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
		set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 0);

		set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_JAB, 3, HG_WINDOW, 5);
		set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 2);
		set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 30);
		set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -28);
		set_hitbox_value(AT_JAB, 3, HG_WIDTH, 50);
		set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 30);
		set_hitbox_value(AT_JAB, 3, HG_SHAPE, 2);
		set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 1);

		set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_JAB, 4, HG_WINDOW, 8);
		set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 2);
		set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 12);
		set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_JAB, 4, HG_WIDTH, 30);
		set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 30);
		set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 1);
		set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 1);
		set_hitbox_value(AT_JAB, 4, HG_ANGLE, 78);
		set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 0.1);
		set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 0.4);
		set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 0.1);
		set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, 0.4);
		set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 2);

		set_hitbox_value(AT_JAB, 5, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_JAB, 5, HG_WINDOW, 8);
		set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 2);
		set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 26);
		set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, 2);

		set_hitbox_value(AT_JAB, 6, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_JAB, 6, HG_WINDOW, 8);
		set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 2);
		set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 55);
		set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -54);
		set_hitbox_value(AT_JAB, 6, HG_HITBOX_GROUP, 2);

		set_hitbox_value(AT_JAB, 7, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_JAB, 7, HG_WINDOW, 10);
		set_hitbox_value(AT_JAB, 7, HG_LIFETIME, 2);
		set_hitbox_value(AT_JAB, 7, HG_HITBOX_X, 12);
		set_hitbox_value(AT_JAB, 7, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_JAB, 7, HG_HITBOX_GROUP, 3);

		set_hitbox_value(AT_JAB, 8, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_JAB, 8, HG_WINDOW, 10);
		set_hitbox_value(AT_JAB, 8, HG_LIFETIME, 2);
		set_hitbox_value(AT_JAB, 8, HG_HITBOX_X, 30);
		set_hitbox_value(AT_JAB, 8, HG_HITBOX_Y, -36);
		set_hitbox_value(AT_JAB, 8, HG_HITBOX_GROUP, 3);

		set_hitbox_value(AT_JAB, 9, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_JAB, 9, HG_WINDOW, 10);
		set_hitbox_value(AT_JAB, 9, HG_LIFETIME, 2);
		set_hitbox_value(AT_JAB, 9, HG_HITBOX_X, 60);
		set_hitbox_value(AT_JAB, 9, HG_HITBOX_Y, -45);
		set_hitbox_value(AT_JAB, 9, HG_HITBOX_GROUP, 3);

		set_hitbox_value(AT_JAB, 10, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_JAB, 10, HG_WINDOW, 12);
		set_hitbox_value(AT_JAB, 10, HG_LIFETIME, 2);
		set_hitbox_value(AT_JAB, 10, HG_HITBOX_X, 42);
		set_hitbox_value(AT_JAB, 10, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_JAB, 10, HG_WIDTH, 84);
		set_hitbox_value(AT_JAB, 10, HG_HEIGHT, 30);
		set_hitbox_value(AT_JAB, 10, HG_SHAPE, 2);
		set_hitbox_value(AT_JAB, 10, HG_PRIORITY, 1);
		set_hitbox_value(AT_JAB, 10, HG_DAMAGE, 1);
		set_hitbox_value(AT_JAB, 10, HG_ANGLE, 78);
		set_hitbox_value(AT_JAB, 10, HG_BASE_KNOCKBACK, 0.1);
		set_hitbox_value(AT_JAB, 10, HG_KNOCKBACK_SCALING, 0.4);
		set_hitbox_value(AT_JAB, 10, HG_BASE_HITPAUSE, 0.1);
		set_hitbox_value(AT_JAB, 10, HG_HITPAUSE_SCALING, 0.4);
		set_hitbox_value(AT_JAB, 10, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_JAB, 10, HG_HITBOX_GROUP, 4);

		set_hitbox_value(AT_JAB, 11, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_JAB, 11, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_JAB, 11, HG_WINDOW, 14);
		set_hitbox_value(AT_JAB, 11, HG_LIFETIME, 2);
		set_hitbox_value(AT_JAB, 11, HG_HITBOX_X, 14);
		set_hitbox_value(AT_JAB, 11, HG_HITBOX_Y, -24);
		set_hitbox_value(AT_JAB, 11, HG_HITBOX_GROUP, 5);

		set_hitbox_value(AT_JAB, 12, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_JAB, 12, HG_WINDOW, 14);
		set_hitbox_value(AT_JAB, 12, HG_LIFETIME, 2);
		set_hitbox_value(AT_JAB, 12, HG_HITBOX_X, 30);
		set_hitbox_value(AT_JAB, 12, HG_HITBOX_Y, -22);
		set_hitbox_value(AT_JAB, 12, HG_HITBOX_GROUP, 5);

		set_hitbox_value(AT_JAB, 13, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_JAB, 13, HG_WINDOW, 14);
		set_hitbox_value(AT_JAB, 13, HG_LIFETIME, 2);
		set_hitbox_value(AT_JAB, 13, HG_HITBOX_X, 60);
		set_hitbox_value(AT_JAB, 13, HG_HITBOX_Y, -16);
		set_hitbox_value(AT_JAB, 13, HG_HITBOX_GROUP, 5);

		set_hitbox_value(AT_JAB, 14, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_JAB, 14, HG_WINDOW, 16);
		set_hitbox_value(AT_JAB, 14, HG_LIFETIME, 2);
		set_hitbox_value(AT_JAB, 14, HG_HITBOX_X, 11);
		set_hitbox_value(AT_JAB, 14, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_JAB, 14, HG_HITBOX_GROUP, 6);

		set_hitbox_value(AT_JAB, 15, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_JAB, 15, HG_WINDOW, 16);
		set_hitbox_value(AT_JAB, 15, HG_LIFETIME, 2);
		set_hitbox_value(AT_JAB, 15, HG_HITBOX_X, 20);
		set_hitbox_value(AT_JAB, 15, HG_HITBOX_Y, -20);
		set_hitbox_value(AT_JAB, 15, HG_HITBOX_GROUP, 6);

		set_hitbox_value(AT_JAB, 16, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_JAB, 16, HG_WINDOW, 16);
		set_hitbox_value(AT_JAB, 16, HG_LIFETIME, 2);
		set_hitbox_value(AT_JAB, 16, HG_HITBOX_X, 50);
		set_hitbox_value(AT_JAB, 16, HG_HITBOX_Y, -15);
		set_hitbox_value(AT_JAB, 16, HG_HITBOX_GROUP, 6);

		//nair
		set_attack_value(AT_NAIR, AG_CATEGORY, 1);
		set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
		set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_NAIR, AG_LANDING_LAG, 7);
		set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

		set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
		set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

		set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 28);
		set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

		set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 18);
		set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
		set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

		set_num_hitboxes(AT_NAIR, 10);

		set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 4);
		set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -3);
		set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -17);
		set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 35);
		set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 30);
		set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 12);
		set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 361);
		set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5.9);
		set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5.9);
		set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);

		set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 4);
		set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 25);
		set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 35);
		set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 35);
		set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
		set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 12);
		set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 361);
		set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 5.9);
		set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5.9);
		set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);

		set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
		set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 4);
		set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, -10);
		set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -26);
		set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 35);
		set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 35);
		set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
		set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 12);
		set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 361);
		set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 5.9);
		set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 5.9);
		set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 6);

		set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
		set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3);
		set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, -12);
		set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 35);
		set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 35);
		set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
		set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 12);
		set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 361);
		set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 5.9);
		set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 5.9);
		set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 6);

		set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
		set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 3);
		set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 22);
		set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -38);
		set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 35);
		set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 35);
		set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 1);
		set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 12);
		set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 361);
		set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 5.9);
		set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 5.9);
		set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_NAIR, 5, HG_ANGLE_FLIPPER, 6);

		set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 2);
		set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 24);
		set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, -3);
		set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -17);
		set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 35);
		set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 30);
		set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 1);
		set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 9);
		set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 361);
		set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 2.2);
		set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 2.2);
		set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_NAIR, 6, HG_ANGLE_FLIPPER, 6);

		set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 2);
		set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 24);
		set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, 25);
		set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_NAIR, 7, HG_WIDTH, 35);
		set_hitbox_value(AT_NAIR, 7, HG_HEIGHT, 35);
		set_hitbox_value(AT_NAIR, 7, HG_PRIORITY, 1);
		set_hitbox_value(AT_NAIR, 7, HG_DAMAGE, 9);
		set_hitbox_value(AT_NAIR, 7, HG_ANGLE, 361);
		set_hitbox_value(AT_NAIR, 7, HG_BASE_KNOCKBACK, 2.2);
		set_hitbox_value(AT_NAIR, 7, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 7, HG_BASE_HITPAUSE, 2.2);
		set_hitbox_value(AT_NAIR, 7, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_NAIR, 7, HG_ANGLE_FLIPPER, 6);

		set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 2);
		set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 24);
		set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, -10);
		set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -26);
		set_hitbox_value(AT_NAIR, 8, HG_WIDTH, 35);
		set_hitbox_value(AT_NAIR, 8, HG_HEIGHT, 35);
		set_hitbox_value(AT_NAIR, 8, HG_PRIORITY, 1);
		set_hitbox_value(AT_NAIR, 8, HG_DAMAGE, 9);
		set_hitbox_value(AT_NAIR, 8, HG_ANGLE, 361);
		set_hitbox_value(AT_NAIR, 8, HG_BASE_KNOCKBACK, 2.2);
		set_hitbox_value(AT_NAIR, 8, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 8, HG_BASE_HITPAUSE, 2.2);
		set_hitbox_value(AT_NAIR, 8, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_NAIR, 8, HG_ANGLE_FLIPPER, 6);

		set_hitbox_value(AT_NAIR, 9, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_NAIR, 9, HG_WINDOW, 2);
		set_hitbox_value(AT_NAIR, 9, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_NAIR, 9, HG_LIFETIME, 24);
		set_hitbox_value(AT_NAIR, 9, HG_HITBOX_X, -12);
		set_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_NAIR, 9, HG_WIDTH, 35);
		set_hitbox_value(AT_NAIR, 9, HG_HEIGHT, 35);
		set_hitbox_value(AT_NAIR, 9, HG_PRIORITY, 1);
		set_hitbox_value(AT_NAIR, 9, HG_DAMAGE, 9);
		set_hitbox_value(AT_NAIR, 9, HG_ANGLE, 361);
		set_hitbox_value(AT_NAIR, 9, HG_BASE_KNOCKBACK, 2.2);
		set_hitbox_value(AT_NAIR, 9, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 9, HG_BASE_HITPAUSE, 2.2);
		set_hitbox_value(AT_NAIR, 9, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 9, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_NAIR, 9, HG_ANGLE_FLIPPER, 6);

		set_hitbox_value(AT_NAIR, 10, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_NAIR, 10, HG_WINDOW, 2);
		set_hitbox_value(AT_NAIR, 10, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_NAIR, 10, HG_LIFETIME, 24);
		set_hitbox_value(AT_NAIR, 10, HG_HITBOX_X, 22);
		set_hitbox_value(AT_NAIR, 10, HG_HITBOX_Y, -38);
		set_hitbox_value(AT_NAIR, 10, HG_WIDTH, 35);
		set_hitbox_value(AT_NAIR, 10, HG_HEIGHT, 35);
		set_hitbox_value(AT_NAIR, 10, HG_PRIORITY, 1);
		set_hitbox_value(AT_NAIR, 10, HG_DAMAGE, 9);
		set_hitbox_value(AT_NAIR, 10, HG_ANGLE, 361);
		set_hitbox_value(AT_NAIR, 10, HG_BASE_KNOCKBACK, 2.2);
		set_hitbox_value(AT_NAIR, 10, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 10, HG_BASE_HITPAUSE, 2.2);
		set_hitbox_value(AT_NAIR, 10, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_NAIR, 10, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_NAIR, 10, HG_ANGLE_FLIPPER, 6);

		//nspecial
		set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
		set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
		set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("fox_laser_take_out"));
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("fox_laser"));
		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 5);

		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 24);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("fox_laser_put_away"));
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 18);
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

		set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
		set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 0);

		set_num_hitboxes(AT_NSPECIAL, 2);

		set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 5);
		set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 4);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 51);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 40);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 45);
		set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
		set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 361);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
		set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 15);
		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 20);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("empty"));
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, false);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);

		set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 8);
		set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 37);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 52);
		set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 102);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 45);
		set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 2);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
		set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 3);
		set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 361);
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 0);
		set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 15);
		set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
		set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 20);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("laser_proj"));
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.6);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 28);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, false);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, false);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);

		//taunt
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
		set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 0);
		set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

		set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 15);
		set_window_value(AT_TAUNT, 1, AG_WINDOW_HSPEED, -5);
		set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);

		set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 50);
		set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 10);
		set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
		set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("fox_taunt"));
		set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 15);

		set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 15);
		set_window_value(AT_TAUNT, 3, AG_WINDOW_HSPEED, 5);
		set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 13);

		//uair
		set_attack_value(AT_UAIR, AG_CATEGORY, 1);
		set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
		set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
		set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
		set_attack_value(AT_UAIR, AG_LANDING_LAG, 9);
		set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

		set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
		set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 6);

		set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
		set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
		set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 2);
		set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_WHIFFLAG, 0);

		set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
		set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

		set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 25);
		set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
		set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 0);

		set_num_hitboxes(AT_UAIR, 9);

		set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 1);
		set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -11);
		set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -67);
		set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 54);
		set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 37);
		set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 2);
		set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 5);
		set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 92);
		set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 1);
		set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -26);
		set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -78);
		set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 45);
		set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 40);
		set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 5);
		set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 92);
		set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 0);

		set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
		set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 1);
		set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -5);
		set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -86);
		set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 45);
		set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 55);
		set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 2);
		set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 5);
		set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 92);
		set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
		set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 1);
		set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -25);
		set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -91);
		set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 65);
		set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 35);
		set_hitbox_value(AT_UAIR, 4, HG_SHAPE, 2);
		set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 5);
		set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 92);
		set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
		set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 1);
		set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, -25);
		set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -80);
		set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 40);
		set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 35);
		set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 5);
		set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 92);
		set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 3);
		set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 2);
		set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, 0);
		set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -56);
		set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 52);
		set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 52);
		set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 13);
		set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 85);
		set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 14.6);
		set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, 0.58);
		set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 14.6);
		set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, 0.58);
		set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, 305);
		set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
		set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, 1);

		set_hitbox_value(AT_UAIR, 7, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UAIR, 7, HG_WINDOW, 3);
		set_hitbox_value(AT_UAIR, 7, HG_LIFETIME, 2);
		set_hitbox_value(AT_UAIR, 7, HG_HITBOX_X, -13);
		set_hitbox_value(AT_UAIR, 7, HG_HITBOX_Y, -84);
		set_hitbox_value(AT_UAIR, 7, HG_WIDTH, 52);
		set_hitbox_value(AT_UAIR, 7, HG_HEIGHT, 52);
		set_hitbox_value(AT_UAIR, 7, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 13);
		set_hitbox_value(AT_UAIR, 7, HG_ANGLE, 85);
		set_hitbox_value(AT_UAIR, 7, HG_BASE_KNOCKBACK, 14.6);
		set_hitbox_value(AT_UAIR, 7, HG_KNOCKBACK_SCALING, 0.58);
		set_hitbox_value(AT_UAIR, 7, HG_BASE_HITPAUSE, 14.6);
		set_hitbox_value(AT_UAIR, 7, HG_HITPAUSE_SCALING, 0.58);
		set_hitbox_value(AT_UAIR, 7, HG_VISUAL_EFFECT, 305);
		set_hitbox_value(AT_UAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
		set_hitbox_value(AT_UAIR, 7, HG_HITBOX_GROUP, 1);

		set_hitbox_value(AT_UAIR, 8, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UAIR, 8, HG_WINDOW, 3);
		set_hitbox_value(AT_UAIR, 8, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_UAIR, 8, HG_LIFETIME, 1);
		set_hitbox_value(AT_UAIR, 8, HG_HITBOX_X, -3);
		set_hitbox_value(AT_UAIR, 8, HG_HITBOX_Y, -74);
		set_hitbox_value(AT_UAIR, 8, HG_WIDTH, 57);
		set_hitbox_value(AT_UAIR, 8, HG_HEIGHT, 88);
		set_hitbox_value(AT_UAIR, 8, HG_SHAPE, 2);
		set_hitbox_value(AT_UAIR, 8, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 8, HG_DAMAGE, 13);
		set_hitbox_value(AT_UAIR, 8, HG_ANGLE, 85);
		set_hitbox_value(AT_UAIR, 8, HG_BASE_KNOCKBACK, 14.6);
		set_hitbox_value(AT_UAIR, 8, HG_KNOCKBACK_SCALING, 0.58);
		set_hitbox_value(AT_UAIR, 8, HG_BASE_HITPAUSE, 14.6);
		set_hitbox_value(AT_UAIR, 8, HG_HITPAUSE_SCALING, 0.58);
		set_hitbox_value(AT_UAIR, 8, HG_VISUAL_EFFECT, 305);
		set_hitbox_value(AT_UAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
		set_hitbox_value(AT_UAIR, 8, HG_HITBOX_GROUP, 1);

		set_hitbox_value(AT_UAIR, 9, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UAIR, 9, HG_WINDOW, 3);
		set_hitbox_value(AT_UAIR, 9, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_UAIR, 9, HG_LIFETIME, 1);
		set_hitbox_value(AT_UAIR, 9, HG_HITBOX_X, 3);
		set_hitbox_value(AT_UAIR, 9, HG_HITBOX_Y, -68);
		set_hitbox_value(AT_UAIR, 9, HG_WIDTH, 57);
		set_hitbox_value(AT_UAIR, 9, HG_HEIGHT, 76);
		set_hitbox_value(AT_UAIR, 9, HG_SHAPE, 2);
		set_hitbox_value(AT_UAIR, 9, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 9, HG_DAMAGE, 13);
		set_hitbox_value(AT_UAIR, 9, HG_ANGLE, 85);
		set_hitbox_value(AT_UAIR, 9, HG_BASE_KNOCKBACK, 14.6);
		set_hitbox_value(AT_UAIR, 9, HG_KNOCKBACK_SCALING, 0.58);
		set_hitbox_value(AT_UAIR, 9, HG_BASE_HITPAUSE, 14.6);
		set_hitbox_value(AT_UAIR, 9, HG_HITPAUSE_SCALING, 0.58);
		set_hitbox_value(AT_UAIR, 9, HG_VISUAL_EFFECT, 305);
		set_hitbox_value(AT_UAIR, 9, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
		set_hitbox_value(AT_UAIR, 9, HG_HITBOX_GROUP, 1);

		//uspecial
		set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
		set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
		set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
		set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

		set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 41);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 9);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.05);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));

		set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 31);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 9);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 9);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("fox_fiyaa"));

		set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 8);
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 18);
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

		set_num_hitboxes(AT_USPECIAL, 8);

		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 21);
		set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 65);
		set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 65);
		set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
		set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 70);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 0.1);
		set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.2);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 2);
		set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 3);
		set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 23);
		set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);

		set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 25);
		set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);

		set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 27);
		set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 3);

		set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 29);
		set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 4);

		set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 31);
		set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 5);

		set_hitbox_value(AT_USPECIAL, 7, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 33);
		set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 6);

		set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 2);
		set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 30);
		set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH,  74);
		set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 74);
		set_hitbox_value(AT_USPECIAL, 8, HG_SHAPE, 0);
		set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 1);
		set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 14);
		set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 80);
		set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 16);
		set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, 0.3);
		set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 16);
		set_hitbox_value(AT_USPECIAL, 8, HG_HITPAUSE_SCALING, 0.3);
		set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT, 148);
		set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, 7);

		//ustrong
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
		set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
		set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
		set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

		set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 2);
		set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

		set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
		set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 3);

		set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 11);
		set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 1);

		set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 24);
		set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);

		set_num_hitboxes(AT_USTRONG, 16);

		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
		set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 19);
		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 34);
		set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 28);
		set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 18);
		set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 17.3);
		set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 17.3);
		set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

		set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
		set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
		set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 16);
		set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -18);
		set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 49);
		set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 40);
		set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 18);
		set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 80);
		set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 17.3);
		set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 17.3);
		set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

		set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
		set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
		set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 24);
		set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -36);
		set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 34);
		set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 27);
		set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 18);
		set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 80);
		set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 17.3);
		set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 17.3);
		set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

		set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
		set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
		set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 26);
		set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 49);
		set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 40);
		set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 18);
		set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 80);
		set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 17.3);
		set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 17.3);
		set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

		set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 3);
		set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 1);
		set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 20);
		set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -44);
		set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 34);
		set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 27);
		set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 18);
		set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 80);
		set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 17.3);
		set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 17.3);
		set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

		set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 3);
		set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 1);
		set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 26);
		set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -45);
		set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 49);
		set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 40);
		set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 18);
		set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 80);
		set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 17.3);
		set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 17.3);
		set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

		set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 3);
		set_hitbox_value(AT_USTRONG, 7, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 2);
		set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, 26);
		set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -36);
		set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 38);
		set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 27);
		set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 7, HG_ANGLE, 361);
		set_hitbox_value(AT_USTRONG, 7, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 7, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 7, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 8, HG_WINDOW, 3);
		set_hitbox_value(AT_USTRONG, 8, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_USTRONG, 8, HG_LIFETIME, 2);
		set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_X, 28);
		set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_USTRONG, 8, HG_WIDTH, 53);
		set_hitbox_value(AT_USTRONG, 8, HG_HEIGHT, 40);
		set_hitbox_value(AT_USTRONG, 8, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 8, HG_ANGLE, 361);
		set_hitbox_value(AT_USTRONG, 8, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_USTRONG, 8, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 8, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 8, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 8, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 8, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 9, HG_WINDOW, 3);
		set_hitbox_value(AT_USTRONG, 9, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_USTRONG, 9, HG_LIFETIME, 5);
		set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_X, 22);
		set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_Y, -44);
		set_hitbox_value(AT_USTRONG, 9, HG_WIDTH, 38);
		set_hitbox_value(AT_USTRONG, 9, HG_HEIGHT, 27);
		set_hitbox_value(AT_USTRONG, 9, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 9, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 9, HG_ANGLE, 361);
		set_hitbox_value(AT_USTRONG, 9, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_USTRONG, 9, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 9, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 9, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 9, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 9, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_USTRONG, 10, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 10, HG_WINDOW, 3);
		set_hitbox_value(AT_USTRONG, 10, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_USTRONG, 10, HG_LIFETIME, 5);
		set_hitbox_value(AT_USTRONG, 10, HG_HITBOX_X, 28);
		set_hitbox_value(AT_USTRONG, 10, HG_HITBOX_Y, -45);
		set_hitbox_value(AT_USTRONG, 10, HG_WIDTH, 53);
		set_hitbox_value(AT_USTRONG, 10, HG_HEIGHT, 40);
		set_hitbox_value(AT_USTRONG, 10, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 10, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 10, HG_ANGLE, 361);
		set_hitbox_value(AT_USTRONG, 10, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_USTRONG, 10, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 10, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 10, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 10, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 10, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_USTRONG, 11, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 11, HG_WINDOW, 3);
		set_hitbox_value(AT_USTRONG, 11, HG_WINDOW_CREATION_FRAME, 5);
		set_hitbox_value(AT_USTRONG, 11, HG_LIFETIME, 4);
		set_hitbox_value(AT_USTRONG, 11, HG_HITBOX_X, 10);
		set_hitbox_value(AT_USTRONG, 11, HG_HITBOX_Y, -62);
		set_hitbox_value(AT_USTRONG, 11, HG_WIDTH, 38);
		set_hitbox_value(AT_USTRONG, 11, HG_HEIGHT, 27);
		set_hitbox_value(AT_USTRONG, 11, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 11, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 11, HG_ANGLE, 361);
		set_hitbox_value(AT_USTRONG, 11, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_USTRONG, 11, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 11, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 11, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 11, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 11, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_USTRONG, 12, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 12, HG_WINDOW, 3);
		set_hitbox_value(AT_USTRONG, 12, HG_WINDOW_CREATION_FRAME, 5);
		set_hitbox_value(AT_USTRONG, 12, HG_LIFETIME, 4);
		set_hitbox_value(AT_USTRONG, 12, HG_HITBOX_X, 16);
		set_hitbox_value(AT_USTRONG, 12, HG_HITBOX_Y, -74);
		set_hitbox_value(AT_USTRONG, 12, HG_WIDTH, 53);
		set_hitbox_value(AT_USTRONG, 12, HG_HEIGHT, 40);
		set_hitbox_value(AT_USTRONG, 12, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 12, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 12, HG_ANGLE, 361);
		set_hitbox_value(AT_USTRONG, 12, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_USTRONG, 12, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 12, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 12, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 12, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 12, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_USTRONG, 13, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 13, HG_WINDOW, 3);
		set_hitbox_value(AT_USTRONG, 13, HG_WINDOW_CREATION_FRAME, 8);
		set_hitbox_value(AT_USTRONG, 13, HG_LIFETIME, 3);
		set_hitbox_value(AT_USTRONG, 13, HG_HITBOX_X, -12);
		set_hitbox_value(AT_USTRONG, 13, HG_HITBOX_Y, -58);
		set_hitbox_value(AT_USTRONG, 13, HG_WIDTH, 38);
		set_hitbox_value(AT_USTRONG, 13, HG_HEIGHT, 27);
		set_hitbox_value(AT_USTRONG, 13, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 13, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 13, HG_ANGLE, 361);
		set_hitbox_value(AT_USTRONG, 13, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_USTRONG, 13, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 13, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 13, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 13, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 13, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_USTRONG, 14, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 14, HG_WINDOW, 3);
		set_hitbox_value(AT_USTRONG, 14, HG_WINDOW_CREATION_FRAME, 8);
		set_hitbox_value(AT_USTRONG, 14, HG_LIFETIME, 3);
		set_hitbox_value(AT_USTRONG, 14, HG_HITBOX_X, -20);
		set_hitbox_value(AT_USTRONG, 14, HG_HITBOX_Y, -68);
		set_hitbox_value(AT_USTRONG, 14, HG_WIDTH, 53);
		set_hitbox_value(AT_USTRONG, 14, HG_HEIGHT, 40);
		set_hitbox_value(AT_USTRONG, 14, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 14, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 14, HG_ANGLE, 361);
		set_hitbox_value(AT_USTRONG, 14, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_USTRONG, 14, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 14, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 14, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 14, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 14, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_USTRONG, 15, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 15, HG_WINDOW, 3);
		set_hitbox_value(AT_USTRONG, 15, HG_WINDOW_CREATION_FRAME, 9);
		set_hitbox_value(AT_USTRONG, 15, HG_LIFETIME, 2);
		set_hitbox_value(AT_USTRONG, 15, HG_HITBOX_X, -16);
		set_hitbox_value(AT_USTRONG, 15, HG_HITBOX_Y, -46);
		set_hitbox_value(AT_USTRONG, 15, HG_WIDTH, 38);
		set_hitbox_value(AT_USTRONG, 15, HG_HEIGHT, 27);
		set_hitbox_value(AT_USTRONG, 15, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 15, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 15, HG_ANGLE, 361);
		set_hitbox_value(AT_USTRONG, 15, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_USTRONG, 15, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 15, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 15, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 15, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 15, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_USTRONG, 16, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USTRONG, 16, HG_WINDOW, 3);
		set_hitbox_value(AT_USTRONG, 16, HG_WINDOW_CREATION_FRAME, 9);
		set_hitbox_value(AT_USTRONG, 16, HG_LIFETIME, 2);
		set_hitbox_value(AT_USTRONG, 16, HG_HITBOX_X, -26);
		set_hitbox_value(AT_USTRONG, 16, HG_HITBOX_Y, -46);
		set_hitbox_value(AT_USTRONG, 16, HG_WIDTH, 53);
		set_hitbox_value(AT_USTRONG, 16, HG_HEIGHT, 40);
		set_hitbox_value(AT_USTRONG, 16, HG_PRIORITY, 2);
		set_hitbox_value(AT_USTRONG, 16, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 16, HG_ANGLE, 361);
		set_hitbox_value(AT_USTRONG, 16, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_USTRONG, 16, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 16, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 16, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 16, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 16, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		//utilt
		set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
		set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

		set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
		set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);

		set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 7);
		set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);

		set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 13);
		set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);

		set_num_hitboxes(AT_UTILT, 16);

		set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 7);
		set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, -8);
		set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -36);
		set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 36);
		set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 36);
		set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 80);
		set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8.8);
		set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8.8);
		set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -20);
		set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -20);
		set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 12);
		set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 110);
		set_hitbox_value(AT_UTILT, 2, HG_GROUNDEDNESS, 2);
		set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 13.4);
		set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 13.4);
		set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -20);
		set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -20);
		set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 3, HG_GROUNDEDNESS, 1);
		set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 84);
		set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 8.7);
		set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 8.7);
		set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, -20);
		set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -20);
		set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 35);
		set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 30);
		set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 3);
		set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 80);
		set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 8.8);
		set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 8.8);
		set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, -30);
		set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -45);
		set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 12);
		set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 110);
		set_hitbox_value(AT_UTILT, 5, HG_GROUNDEDNESS, 2);
		set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 13.4);
		set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 13.4);
		set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 5, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, -30);
		set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -45);
		set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 6, HG_GROUNDEDNESS, 1);
		set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 6, HG_ANGLE, 84);
		set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 8.7);
		set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 8.7);
		set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_UTILT, 7, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 7, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 7, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 7, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_UTILT, 7, HG_HITBOX_X, -30);
		set_hitbox_value(AT_UTILT, 7, HG_HITBOX_Y, -45);
		set_hitbox_value(AT_UTILT, 7, HG_WIDTH, 35);
		set_hitbox_value(AT_UTILT, 7, HG_HEIGHT, 30);
		set_hitbox_value(AT_UTILT, 7, HG_PRIORITY, 3);
		set_hitbox_value(AT_UTILT, 7, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 7, HG_ANGLE, 80);
		set_hitbox_value(AT_UTILT, 7, HG_BASE_KNOCKBACK, 8.8);
		set_hitbox_value(AT_UTILT, 7, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 7, HG_BASE_HITPAUSE, 8.8);
		set_hitbox_value(AT_UTILT, 7, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 7, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		set_hitbox_value(AT_UTILT, 8, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 8, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 8, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 8, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_UTILT, 8, HG_HITBOX_X, -10);
		set_hitbox_value(AT_UTILT, 8, HG_HITBOX_Y, -67);
		set_hitbox_value(AT_UTILT, 8, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 8, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 8, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 8, HG_DAMAGE, 12);
		set_hitbox_value(AT_UTILT, 8, HG_ANGLE, 110);
		set_hitbox_value(AT_UTILT, 8, HG_GROUNDEDNESS, 2);
		set_hitbox_value(AT_UTILT, 8, HG_BASE_KNOCKBACK, 13.4);
		set_hitbox_value(AT_UTILT, 8, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 8, HG_BASE_HITPAUSE, 13.4);
		set_hitbox_value(AT_UTILT, 8, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 8, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_UTILT, 8, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_UTILT, 9, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 9, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 9, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 9, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_UTILT, 9, HG_HITBOX_X, -10);
		set_hitbox_value(AT_UTILT, 9, HG_HITBOX_Y, -67);
		set_hitbox_value(AT_UTILT, 9, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 9, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 9, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 9, HG_GROUNDEDNESS, 1);
		set_hitbox_value(AT_UTILT, 9, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 9, HG_ANGLE, 84);
		set_hitbox_value(AT_UTILT, 9, HG_BASE_KNOCKBACK, 8.7);
		set_hitbox_value(AT_UTILT, 9, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 9, HG_BASE_HITPAUSE, 8.7);
		set_hitbox_value(AT_UTILT, 9, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 9, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_UTILT, 10, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 10, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 10, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 10, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_UTILT, 10, HG_HITBOX_X, -10);
		set_hitbox_value(AT_UTILT, 10, HG_HITBOX_Y, -67);
		set_hitbox_value(AT_UTILT, 10, HG_WIDTH, 35);
		set_hitbox_value(AT_UTILT, 10, HG_HEIGHT, 30);
		set_hitbox_value(AT_UTILT, 10, HG_PRIORITY, 3);
		set_hitbox_value(AT_UTILT, 10, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 10, HG_ANGLE, 80);
		set_hitbox_value(AT_UTILT, 10, HG_BASE_KNOCKBACK, 8.8);
		set_hitbox_value(AT_UTILT, 10, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 10, HG_BASE_HITPAUSE, 8.8);
		set_hitbox_value(AT_UTILT, 10, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 10, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		set_hitbox_value(AT_UTILT, 11, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 11, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 11, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 11, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_UTILT, 11, HG_HITBOX_X, 7);
		set_hitbox_value(AT_UTILT, 11, HG_HITBOX_Y, -66);
		set_hitbox_value(AT_UTILT, 11, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 11, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 11, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 11, HG_DAMAGE, 12);
		set_hitbox_value(AT_UTILT, 11, HG_ANGLE, 110);
		set_hitbox_value(AT_UTILT, 11, HG_GROUNDEDNESS, 2);
		set_hitbox_value(AT_UTILT, 11, HG_BASE_KNOCKBACK, 13.4);
		set_hitbox_value(AT_UTILT, 11, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 11, HG_BASE_HITPAUSE, 13.4);
		set_hitbox_value(AT_UTILT, 11, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 11, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_UTILT, 11, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_UTILT, 12, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 12, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 12, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 12, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_UTILT, 12, HG_HITBOX_X, 7);
		set_hitbox_value(AT_UTILT, 12, HG_HITBOX_Y, -66);
		set_hitbox_value(AT_UTILT, 12, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 12, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 12, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 12, HG_GROUNDEDNESS, 1);
		set_hitbox_value(AT_UTILT, 12, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 12, HG_ANGLE, 84);
		set_hitbox_value(AT_UTILT, 12, HG_BASE_KNOCKBACK, 8.7);
		set_hitbox_value(AT_UTILT, 12, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 12, HG_BASE_HITPAUSE, 8.7);
		set_hitbox_value(AT_UTILT, 12, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 12, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_UTILT, 13, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 13, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 13, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 13, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_UTILT, 13, HG_HITBOX_X, 7);
		set_hitbox_value(AT_UTILT, 13, HG_HITBOX_Y, -66);
		set_hitbox_value(AT_UTILT, 13, HG_WIDTH, 35);
		set_hitbox_value(AT_UTILT, 13, HG_HEIGHT, 30);
		set_hitbox_value(AT_UTILT, 13, HG_PRIORITY, 3);
		set_hitbox_value(AT_UTILT, 13, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 13, HG_ANGLE, 80);
		set_hitbox_value(AT_UTILT, 13, HG_BASE_KNOCKBACK, 8.8);
		set_hitbox_value(AT_UTILT, 13, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 13, HG_BASE_HITPAUSE, 8.8);
		set_hitbox_value(AT_UTILT, 13, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 13, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		set_hitbox_value(AT_UTILT, 14, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 14, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 14, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 14, HG_WINDOW_CREATION_FRAME, 5);
		set_hitbox_value(AT_UTILT, 14, HG_HITBOX_X, 4);
		set_hitbox_value(AT_UTILT, 14, HG_HITBOX_Y, -62);
		set_hitbox_value(AT_UTILT, 14, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 14, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 14, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 14, HG_DAMAGE, 12);
		set_hitbox_value(AT_UTILT, 14, HG_ANGLE, 110);
		set_hitbox_value(AT_UTILT, 14, HG_GROUNDEDNESS, 2);
		set_hitbox_value(AT_UTILT, 14, HG_BASE_KNOCKBACK, 13.4);
		set_hitbox_value(AT_UTILT, 14, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 14, HG_BASE_HITPAUSE, 13.4);
		set_hitbox_value(AT_UTILT, 14, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 14, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_UTILT, 14, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_UTILT, 15, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 15, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 15, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 15, HG_WINDOW_CREATION_FRAME, 5);
		set_hitbox_value(AT_UTILT, 15, HG_HITBOX_X, 4);
		set_hitbox_value(AT_UTILT, 15, HG_HITBOX_Y, -62);
		set_hitbox_value(AT_UTILT, 15, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 15, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 15, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 15, HG_GROUNDEDNESS, 1);
		set_hitbox_value(AT_UTILT, 15, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 15, HG_ANGLE, 84);
		set_hitbox_value(AT_UTILT, 15, HG_BASE_KNOCKBACK, 8.7);
		set_hitbox_value(AT_UTILT, 15, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 15, HG_BASE_HITPAUSE, 8.7);
		set_hitbox_value(AT_UTILT, 15, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 15, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_UTILT, 16, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 16, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 16, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 16, HG_WINDOW_CREATION_FRAME, 5);
		set_hitbox_value(AT_UTILT, 16, HG_HITBOX_X, 4);
		set_hitbox_value(AT_UTILT, 16, HG_HITBOX_Y, -62);
		set_hitbox_value(AT_UTILT, 16, HG_WIDTH, 35);
		set_hitbox_value(AT_UTILT, 16, HG_HEIGHT, 30);
		set_hitbox_value(AT_UTILT, 16, HG_PRIORITY, 3);
		set_hitbox_value(AT_UTILT, 16, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 16, HG_ANGLE, 80);
		set_hitbox_value(AT_UTILT, 16, HG_BASE_KNOCKBACK, 8.8);
		set_hitbox_value(AT_UTILT, 16, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 16, HG_BASE_HITPAUSE, 8.8);
		set_hitbox_value(AT_UTILT, 16, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 16, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		melee_activated = true;
		if (!falco) {
			sound_play(sound_get("fox_taunt"));
		}
		easter_egg_set = true;
	}

}

// Runes

if "abysspostdrawenabled" not in self abysspostdrawenabled = true; // tell buddy you have post draw code
if "abyssPostDrawing" in self && abyssPostDrawing abyssPostDraw(); // actually do post draw code
#define abyssPostDraw 
/// abyssPostDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_postDrawArray" in self && ds_list_valid(abyss_postDrawArray))  {
    if (ds_list_size(abyss_postDrawArray) > 0) {
        for (var _i = 0; _i < ds_list_size(abyss_postDrawArray);_i++) {
            var _text = abyss_postDrawArray[| _i];
            if draw_get_halign() != _text[6] {
                draw_set_halign(_text[6]);
            }
            switch (_text[0]) {
                case 0:
                    draw_debug_text(floor(_text[1]),floor(_text[2]),(_text[3]));
                    break;
                case 1:
                    draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
                    break;
                case 2:
                    draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
                    break;
                case 3:
                    if draw_get_font() != 1 draw_set_font(1);
                    draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
                    break;
                default:
                break;
            }
        }
    }
    //finished drawing, so clear the table for the next frame.
    ds_list_clear(abyss_postDrawArray);
}

#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.

if draw_get_font() != argument[3] {
    draw_set_font(argument[3]);
}
draw_text_color(argument[0]+2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1],argument[2],argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,1);