set_attack_value(AT_USTRONG, AG_CATEGORY, 0);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_MUNO_ATTACK_MISC, "Ground-to-air attack.");

// startup + charge window
set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

// release
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

// spin active 1
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

// spin active 2
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);

// spin active 3
set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 4);

// inbetween spin and final hit
set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX_FRAME, 2);

// final hit
set_window_value(AT_USTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 10);

// endlag
set_window_value(AT_USTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 5);

// awesome scoop hitbox
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_MUNO_HITBOX_NAME, "Scoop Hit");
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 21);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 62);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 125);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);

// Multihits
for(i = 2; i < 5; i++){//>
	// compacting this to a for loop to reduce memory + making it cleaner	
	set_hitbox_value(AT_USTRONG, i, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_USTRONG, i, HG_MUNO_HITBOX_NAME, "Multihit " + string(i - 1));
	set_hitbox_value(AT_USTRONG, i, HG_WINDOW, 3 + (i - 2));
	set_hitbox_value(AT_USTRONG, i, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(AT_USTRONG, i, HG_LIFETIME, 6);
	set_hitbox_value(AT_USTRONG, i, HG_HITBOX_X, 5);
	set_hitbox_value(AT_USTRONG, i, HG_HITBOX_Y, -65);
	set_hitbox_value(AT_USTRONG, i, HG_WIDTH, 50);
	set_hitbox_value(AT_USTRONG, i, HG_HEIGHT, 60);
	set_hitbox_value(AT_USTRONG, i, HG_PRIORITY, 5);
	set_hitbox_value(AT_USTRONG, i, HG_DAMAGE, 2);
	set_hitbox_value(AT_USTRONG, i, HG_ANGLE, 90);
	set_hitbox_value(AT_USTRONG, i, HG_ANGLE_FLIPPER, 9);
	set_hitbox_value(AT_USTRONG, i, HG_BASE_KNOCKBACK, 4.5);
	set_hitbox_value(AT_USTRONG, i, HG_BASE_HITPAUSE, 2);
	set_hitbox_value(AT_USTRONG, i, HG_EXTRA_HITPAUSE, 1);
	set_hitbox_value(AT_USTRONG, i, HG_VISUAL_EFFECT, 302);
	set_hitbox_value(AT_USTRONG, i, HG_HITBOX_GROUP, i - 1);
	set_hitbox_value(AT_USTRONG, i, HG_TECHABLE, 3); // trolled!
	set_hitbox_value(AT_USTRONG, i, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
}

// final hit
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_MUNO_HITBOX_NAME, "Clean Hit");
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 7);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 4);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 48);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 76);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 5, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 5);