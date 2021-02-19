set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//startup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

//startup
set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 3);

//active
set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//active
set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//active
set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);

//active
set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 7);

//active
set_window_value(AT_DSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 8);

//endlag
set_window_value(AT_DSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_DSTRONG, 5);

//Remember: Buster fspecial: hit lockout on strongs

//multi hits

for (i = 0; i < 4; i++){
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_WINDOW, 3 + i);
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_LIFETIME, 3);
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_HITBOX_X, 0 * ((i % 2) ? -1 : 1));
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_HITBOX_Y, -20 - 2 * i);
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_HITBOX_GROUP, 1 + i);
	
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_LIFETIME, 3);
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_WIDTH, 130 - 10 * i);
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_HEIGHT, 40 + 4 * i);
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_SHAPE, 2);
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_PRIORITY, 2);
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_DAMAGE, 1);
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_ANGLE, 10);
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_TECHABLE, 1);
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_BASE_HITPAUSE, 3);
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_VISUAL_EFFECT, 301);
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_VISUAL_EFFECT_X_OFFSET, 16 * ((i % 2) ? -1 : 1));
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_HIT_SFX, asset_get("sfx_blow_weak" + string((i % 2) + 1)));
	set_hitbox_value(AT_DSTRONG, 1 + i, HG_ANGLE_FLIPPER, 7);
	
	//set_hitbox_value(AT_DSTRONG, 1 + i, HG_EXTRA_HITPAUSE, -2);
}



//last hit

set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 110);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 5, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 5);





/*

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 46);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);

for (i = 0; i < 3; i++){
	set_hitbox_value(AT_DSTRONG, 2 + i, HG_HITBOX_TYPE, 1); //why the hell does not this get applied by parent
	set_hitbox_value(AT_DSTRONG, 2 + i, HG_PARENT_HITBOX, 1); //actual use of HG_PARENT_HITBOX, let's go army
	set_hitbox_value(AT_DSTRONG, 2 + i, HG_WINDOW, 4 + i);
	set_hitbox_value(AT_DSTRONG, 2 + i, HG_HITBOX_X, 46 * ((i % 2) ? 1 : -1));
	set_hitbox_value(AT_DSTRONG, 2 + i, HG_HITBOX_Y, -20);
	set_hitbox_value(AT_DSTRONG, 2 + i, HG_HITBOX_GROUP, 2 + i);
}


//last hit