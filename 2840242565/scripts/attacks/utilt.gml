set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

// startup
set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 9);

// active 1
set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// active 2
set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

// active 3
set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

// endlag
set_window_value(AT_UTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, -1);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 10);

//Initial Hitbox
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, -6);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -47);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 32);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 88);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 75);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_EXTRA_HITPAUSE, -1);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);

//Scoop Hitbox in front of Gooey
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 115);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_EXTRA_HITPAUSE, -1);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);

//Scoop Hitbox above of Gooey, meant for airborne opponents
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -63);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 52);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 270);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 3, HG_EXTRA_HITPAUSE, -1);
set_hitbox_value(AT_UTILT, 3, HG_GROUNDEDNESS, 2); // aerial opponents only
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 1);

//A "for" loop is used here to shorten the amount of multihit code here.
for (var i = 4; i < 11; i++){
	switch (i){
		case 4:
			var windowCreationFrame = 0;
			var hitboxX = -5;
			var hitboxY = -60;
			var hitboxWidth = 44;
			var hitboxHeight = 60;
			var hitboxShape = 0;
			var hitboxAngleFlipper = 9;
			var hitboxDamage = 1;
			var hitboxHitpause = 3;
			var hitboxHitpauseScal = 0;
			var hitboxBKB = 4;
			var hitboxKBS = 0;
			var hitboxVFX = 301;
			var hitboxSFX = asset_get("sfx_blow_weak2");
			break;
		case 5:
			var windowCreationFrame = 2;
			var hitboxX = -5;
			var hitboxY = -64;
			var hitboxWidth = 58;
			var hitboxHeight = 52;
			var hitboxAngleFlipper = 9;
			var hitboxDamage = 1;
			break;
		case 6:
			var windowCreationFrame = 4;
			var hitboxX = -6;
			var hitboxY = -71;
			var hitboxWidth = 72;
			var hitboxHeight = 40;
			var hitboxAngleFlipper = 9;
			var hitboxDamage = 1;
			break;
		case 7:
			var windowCreationFrame = 6;
			var hitboxX = -6;
			var hitboxY = -75;
			var hitboxWidth = 72;
			var hitboxHeight = 40;
			var hitboxAngleFlipper = 9;
			var hitboxDamage = 1;
			break;
		case 8:
			var windowCreationFrame = 8;
			var hitboxX = -6;
			var hitboxY = -75;
			var hitboxWidth = 72;
			var hitboxHeight = 40;
			var hitboxAngleFlipper = 9;
			var hitboxDamage = 1;
			break;
		case 9:
			var windowCreationFrame = 10;
			var hitboxX = -6;
			var hitboxY = -75;
			var hitboxWidth = 72;
			var hitboxHeight = 40;
			var hitboxAngleFlipper = 9;
			var hitboxDamage = 1;
			break;
		case 10:
			var windowCreationFrame = 12;
			var hitboxX = -6;
			var hitboxY = -75;
			var hitboxWidth = 80;
			var hitboxHeight = 40;
			var hitboxShape = 2;
			var hitboxAngleFlipper = 0;
			var hitboxDamage = 4;
			var hitboxHitpause = 6;
			var hitboxHitpauseScal = 0.3;
			var hitboxBKB = 8;
			var hitboxKBS = .4;
			var hitboxVFX = 304;
			var hitboxSFX = asset_get("sfx_blow_medium3")
			break;
	}
	//Multihit Hitbox
	set_hitbox_value(AT_UTILT, i, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_UTILT, i, HG_WINDOW, 3);
	set_hitbox_value(AT_UTILT, i, HG_WINDOW_CREATION_FRAME, windowCreationFrame);
	set_hitbox_value(AT_UTILT, i, HG_LIFETIME, 2);
	set_hitbox_value(AT_UTILT, i, HG_HITBOX_X, hitboxX);
	set_hitbox_value(AT_UTILT, i, HG_HITBOX_Y, hitboxY);
	set_hitbox_value(AT_UTILT, i, HG_WIDTH, hitboxWidth);
	set_hitbox_value(AT_UTILT, i, HG_HEIGHT, hitboxHeight);
	set_hitbox_value(AT_UTILT, i, HG_SHAPE, hitboxShape);
	set_hitbox_value(AT_UTILT, i, HG_PRIORITY, 1);
	set_hitbox_value(AT_UTILT, i, HG_DAMAGE, hitboxDamage);
	set_hitbox_value(AT_UTILT, i, HG_ANGLE, 90);
	set_hitbox_value(AT_UTILT, i, HG_ANGLE_FLIPPER, hitboxAngleFlipper);
	set_hitbox_value(AT_UTILT, i, HG_BASE_KNOCKBACK, hitboxBKB);
	set_hitbox_value(AT_UTILT, i, HG_KNOCKBACK_SCALING, hitboxKBS);
	set_hitbox_value(AT_UTILT, i, HG_BASE_HITPAUSE, hitboxHitpause);
	set_hitbox_value(AT_UTILT, i, HG_HITPAUSE_SCALING, hitboxHitpauseScal);
	set_hitbox_value(AT_UTILT, i, HG_VISUAL_EFFECT, hitboxVFX);
	set_hitbox_value(AT_UTILT, i, HG_VISUAL_EFFECT_X_OFFSET, 6);
	set_hitbox_value(AT_UTILT, i, HG_VISUAL_EFFECT_Y_OFFSET, 14);
	set_hitbox_value(AT_UTILT, i, HG_HIT_SFX, hitboxSFX);
	set_hitbox_value(AT_UTILT, i, HG_HITBOX_GROUP, i);
	if (i == 10){
		set_hitbox_value(AT_UTILT, i, HG_HITBOX_GROUP, -1);
	}
}