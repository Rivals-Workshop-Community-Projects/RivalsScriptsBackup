set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_NAME, "FSpecial: Operator Onslaught");
set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_MISC, "Create a projectile which can be guided. Release SPECIAL to spawn an Operator where it is currently.");

// startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);

// hold for travelling
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 7);

// release
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);

// endlag
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 22);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(AT_FSPECIAL, 4);

// spawn


for (var i = 1; i <= 2; i++){//>
	if (i == 1){
		set_hitbox_value(AT_FSPECIAL, i, HG_MUNO_HITBOX_NAME, "Operator Spawn Hitbox (Remote)");
		set_hitbox_value(AT_FSPECIAL, i, HG_MUNO_HITBOX_MISC_ADD, "Created by using FSpecial.");
	} else if (i == 2){
		set_hitbox_value(AT_FSPECIAL, i, HG_MUNO_HITBOX_NAME, "Operator Spawn Hitbox (Manual)");
		set_hitbox_value(AT_FSPECIAL, i, HG_MUNO_HITBOX_MISC_ADD, "Created by using DSpecial. Is notably much weaker when spawned this way.");
	}
	set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_TYPE, 2);
	
	set_hitbox_value(AT_FSPECIAL, i, HG_WINDOW, 69);
	set_hitbox_value(AT_FSPECIAL, i, HG_LIFETIME, 4);
	set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_X, 0);
	set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_Y, 0);
	set_hitbox_value(AT_FSPECIAL, i, HG_WIDTH, 68);
	set_hitbox_value(AT_FSPECIAL, i, HG_HEIGHT, 68);
	set_hitbox_value(AT_FSPECIAL, i, HG_PRIORITY, 1);
	set_hitbox_value(AT_FSPECIAL, i, HG_SHAPE, 0);
	set_hitbox_value(AT_FSPECIAL, i, HG_DAMAGE, 8 - ((i==2)?2:0));
	set_hitbox_value(AT_FSPECIAL, i, HG_ANGLE, 90);
	set_hitbox_value(AT_FSPECIAL, i, HG_VISUAL_EFFECT_X_OFFSET, 0);
	set_hitbox_value(AT_FSPECIAL, i, HG_VISUAL_EFFECT_Y_OFFSET, -2);
	set_hitbox_value(AT_FSPECIAL, i, HG_BASE_KNOCKBACK, 7.5 - ((i==2)?1:0));
	set_hitbox_value(AT_FSPECIAL, i, HG_KNOCKBACK_SCALING, 0.1 + ((i==2)?0.2:0));
	set_hitbox_value(AT_FSPECIAL, i, HG_HITSTUN_MULTIPLIER, 0.8 - ((i==2)?0.2:0));
	set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_SPRITE, sprite_get("empty"));
	set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_WALL_BEHAVIOR, 1);
	set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_UNBASHABLE, 1);
	set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_DESTROY_EFFECT, 302);
	// set_hitbox_value(AT_FSPECIAL, i, HG_EFFECT, 9); // polite
	set_hitbox_value(AT_FSPECIAL, i, HG_VISUAL_EFFECT, 270);
	set_hitbox_value(AT_FSPECIAL, i, HG_BASE_HITPAUSE, 6 - ((i==2)?4:0));
	set_hitbox_value(AT_FSPECIAL, i, HG_EXTRA_HITPAUSE, 3 - ((i==2)?3:0));
	set_hitbox_value(AT_FSPECIAL, i, HG_HITPAUSE_SCALING, 0.7);
	set_hitbox_value(AT_FSPECIAL, i, HG_HIT_SFX, asset_get("sfx_ell_arc_taunt_collide"));
	set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_PARRY_STUN, true);
	set_hitbox_value(AT_FSPECIAL, i, HG_EXTENDED_PARRY_STUN, true);
	set_hitbox_value(AT_FSPECIAL, i, HG_PROJECTILE_IS_TRANSCENDENT, true);
}

// other shit
set_hitbox_value(AT_FSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Operator Footstool Travelling Hitbox");
set_hitbox_value(AT_FSPECIAL, 3, HG_MUNO_HITBOX_MISC_ADD, "Detection hitbox for enemy contact for an Operator if it is grabbed and footstooled by an Up Special.");
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 69);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 1);	// NONE!!!
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("there_is_no_hit_sfx"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);

// other shit
set_hitbox_value(AT_FSPECIAL, 4, HG_MUNO_HITBOX_NAME, "Operator Footstool Explosion Hitbox");
set_hitbox_value(AT_FSPECIAL, 4, HG_MUNO_HITBOX_MISC_ADD, "Explosion contact hitbox for an Operator if it is grabbed and footstooled by an Up Special.");
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 69);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 76);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 76);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 89);	// you know what's funnier that "number that comes after 5" "number that comes before 8"? ...89.
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -2);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 270);	// NONE!!!
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_ell_arc_taunt_collide"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);