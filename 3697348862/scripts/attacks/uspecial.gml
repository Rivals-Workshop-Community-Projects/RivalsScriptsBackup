set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 6);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_NAME, "USpecial: USB Cable");
set_attack_value(AT_USPECIAL, AG_MUNO_ATTACK_MISC, "Command grab meant for vertical recovery.
Grabbing a wall grapples you to it. Can grapple up to two times before being put in pratfall (resets on walljump, landing or getting hit).
Grabbing an opponent grapples you to them. If the opponent is below 50%, then they will be sent outward weakly. Otherwise, they will be spiked.");

// startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));

var activeTimePerHitbox = 1;
// grab window
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, activeTimePerHitbox * 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);

// hold + endlag
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 34);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 12);

// ===============

// grab hit, hold
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 22);

// grab hit, move to opponent
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 23);

// get on top of opponent
set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 29);

// hitbox
set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 32);

// endlag
set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 33);

// ==================

// fake wall jump
set_window_value(AT_USPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 36);


set_num_hitboxes(AT_USPECIAL, 10);


// Scoop Hitbox
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_MUNO_HITBOX_NAME, "Scoop Hitbox");
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, activeTimePerHitbox);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 72);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 77);	// ignore the spill
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
// set_hitbox_value(AT_USPECIAL, 1, HG_MUNO_HITBOX_MISC_ADD, "Nah.");

// Grab Hitboxes

// for loop for multihits
for (var i = 2; i <= 6; i++){//>

	var hitboxNumTracker = i - 2;

	set_hitbox_value(AT_USPECIAL, i, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_USPECIAL, i, HG_MUNO_HITBOX_NAME, "Grab Hitbox");
	set_hitbox_value(AT_USPECIAL, i, HG_WINDOW, 2);
	set_hitbox_value(AT_USPECIAL, i, HG_WINDOW_CREATION_FRAME, activeTimePerHitbox + (hitboxNumTracker * activeTimePerHitbox));
	set_hitbox_value(AT_USPECIAL, i, HG_LIFETIME, activeTimePerHitbox);
	set_hitbox_value(AT_USPECIAL, i, HG_HITBOX_X, 50 + (hitboxNumTracker * 16));
	set_hitbox_value(AT_USPECIAL, i, HG_HITBOX_Y, -90 + (hitboxNumTracker * -32));
	set_hitbox_value(AT_USPECIAL, i, HG_WIDTH, 36);
	set_hitbox_value(AT_USPECIAL, i, HG_HEIGHT, 36);
	set_hitbox_value(AT_USPECIAL, i, HG_SHAPE, 1);
	set_hitbox_value(AT_USPECIAL, i, HG_PRIORITY, 1);
	set_hitbox_value(AT_USPECIAL, i, HG_DAMAGE, 4);
	set_hitbox_value(AT_USPECIAL, i, HG_ANGLE, 60);	// ignore the spill
	set_hitbox_value(AT_USPECIAL, i, HG_ANGLE_FLIPPER, 0);
	set_hitbox_value(AT_USPECIAL, i, HG_BASE_KNOCKBACK, 8.5);
	set_hitbox_value(AT_USPECIAL, i, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_USPECIAL, i, HG_HITSTUN_MULTIPLIER, 0.6);
	set_hitbox_value(AT_USPECIAL, i, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_USPECIAL, i, HG_HITPAUSE_SCALING, 0.3);
	set_hitbox_value(AT_USPECIAL, i, HG_VISUAL_EFFECT, 305);
	set_hitbox_value(AT_USPECIAL, i, HG_VISUAL_EFFECT_X_OFFSET, 0);
	set_hitbox_value(AT_USPECIAL, i, HG_VISUAL_EFFECT_Y_OFFSET, 0);
	set_hitbox_value(AT_USPECIAL, i, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_USPECIAL, i, HG_HITBOX_GROUP, 1);
	// set_hitbox_value(AT_USPECIAL, i, HG_MUNO_HITBOX_MISC_ADD, "Nah.");
	if (i != 2){
		set_hitbox_value(AT_USPECIAL, i, HG_MUNO_HITBOX_EXCLUDE, 1);
	} else {
		set_hitbox_value(AT_USPECIAL, i, HG_MUNO_HITBOX_ACTIVE, "16-20");
	}
}


// Footstool Hitbox
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_MUNO_HITBOX_NAME, "Footstool Hitbox");
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 58);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 58);
set_hitbox_value(AT_USPECIAL, 7, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 55);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, 0.05);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 7);
set_hitbox_value(AT_USPECIAL, 7, HG_MUNO_HITBOX_MISC_ADD, "Will only hit if the opponent is below 50%.");

// Spike Hitbox
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_MUNO_HITBOX_NAME, "Spike Hitbox");
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH, 58);
set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 58);
set_hitbox_value(AT_USPECIAL, 8, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 280);
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL, 8, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, 7);
set_hitbox_value(AT_USPECIAL, 8, HG_MUNO_HITBOX_MISC_ADD, "Will only hit if the opponent is above or equal to 50%.");