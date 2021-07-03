set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_AIR_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_HURTBOX_AIR_SPRITE, sprite_get("jab_hurt"));
//set_attack_value(AT_JAB, AG_OFF_LEDGE, 1);
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 11);

//1st Jab
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED, 5);
//set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 15);
//set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 4);

//2nd Jab
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 9);
//set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 4);

//Rapid Jab
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 9);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.75);

//Finisher
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(AT_JAB, 9, AG_WINDOW_HSPEED, 6);
set_window_value(AT_JAB, 9, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(AT_JAB, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 10, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_JAB, 11, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAME_START, 35);
set_window_value(AT_JAB, 11, AG_WINDOW_HAS_WHIFFLAG, 1);


//Hitboxes
set_num_hitboxes(AT_JAB, 8);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 17);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 76);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_JAB, 1, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));

//Rapid jab that hits only aerial enemies
set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 8);
//set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 40);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 2, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_JAB, 2, HG_SDI_MULTIPLIER, 0.75);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 1);
//set_hitbox_value(AT_JAB, 1, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
set_hitbox_value(AT_JAB, 2, HG_EXTRA_CAMERA_SHAKE, -1);

//Rapid jab that only hits grounded enemies to launch them up a bit to
//allow SDI escape
set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
//set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 40);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 3, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_JAB, 3, HG_SDI_MULTIPLIER, 0.75);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 3, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 1);
//set_hitbox_value(AT_JAB, 1, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
set_hitbox_value(AT_JAB, 3, HG_EXTRA_CAMERA_SHAKE, -1);

set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -22);

set_hitbox_value(AT_JAB, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -22);

//Finisher Hitbox
set_hitbox_value(AT_JAB, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 6, HG_WINDOW, 10);
set_hitbox_value(AT_JAB, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 18);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -24);
set_hitbox_value(AT_JAB, 6, HG_WIDTH, 62);
set_hitbox_value(AT_JAB, 6, HG_HEIGHT, 54);
set_hitbox_value(AT_JAB, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 6, HG_ANGLE, 40);
//set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 3);
//set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_JAB, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 6, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_JAB, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 6, HG_HITPAUSE_SCALING, 0.5);
//set_hitbox_value(AT_JAB, 1, HG_DRIFT_MULTIPLIER, 0.1);
//set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT, 112 );
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 6, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));

//Back tail hitbox Jab 1
set_hitbox_value(AT_JAB, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 7, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_X, -20);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_Y, -11);
set_hitbox_value(AT_JAB, 7, HG_WIDTH, 20);
set_hitbox_value(AT_JAB, 7, HG_HEIGHT, 18);
set_hitbox_value(AT_JAB, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 7, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 7, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 7, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 7, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_JAB, 1, HG_DRIFT_MULTIPLIER, 0.1);
//set_hitbox_value(AT_JAB, 7, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 7, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_JAB, 7, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 7, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 7, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));

//Jab 2 hitbox
set_hitbox_value(AT_JAB, 8, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_GROUP, 8);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 8, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_X, 28);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 8, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 8, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 8, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 8, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 8, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 8, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 8, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_JAB, 8, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 8, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 8, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));

/*
set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 56);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 30);
set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_JAB, 1, HG_DRIFT_MULTIPLIER, 0.1);
//set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2 );
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 40);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 0.4);
set_hitbox_value(AT_JAB, 2, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_JAB, 2, HG_SDI_MULTIPLIER, 1.25);
set_hitbox_value(AT_JAB, 2, HG_EFFECT, 9 );
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 4); // was 3
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 2); // was 6
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));


set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -28);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 3);


set_hitbox_value(AT_JAB, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -28);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, 4);

//Polite hitboxes. These are larger but only hitstun the enemy if they are already
//hitstunned. They have lower priority from the standard hitboxes
set_hitbox_value(AT_JAB, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 6, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -10);
set_hitbox_value(AT_JAB, 6, HG_WIDTH, 100);
set_hitbox_value(AT_JAB, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 6, HG_DAMAGE, 0.25);
set_hitbox_value(AT_JAB, 6, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 6, HG_ANGLE_FLIPPER, 4); // was 3
set_hitbox_value(AT_JAB, 6, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 6, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_JAB, 6, HG_SDI_MULTIPLIER, 1.25);
set_hitbox_value(AT_JAB, 6, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 6, HG_EFFECT, 9 );
set_hitbox_value(AT_JAB, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_JAB, 7, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 7, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 7, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_Y, -10);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 7, HG_EFFECT, 9 );

set_hitbox_value(AT_JAB, 8, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 8, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 8, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_Y, -10);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, 8, HG_EFFECT, 9 );

set_hitbox_value(AT_JAB, 9, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 9, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 9, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_JAB, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_Y, -10);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_JAB, 9, HG_EFFECT, 9 );


set_hitbox_value(AT_JAB, 10, HG_PARENT_HITBOX, 10);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 10, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 10, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_X, 0);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_Y, -10);
set_hitbox_value(AT_JAB, 10, HG_WIDTH, 100);
set_hitbox_value(AT_JAB, 10, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 10, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 10, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 10, HG_ANGLE_FLIPPER, 3);
//set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_JAB, 10, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 10, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_JAB, 10, HG_BASE_HITPAUSE, 8);
//set_hitbox_value(AT_JAB, 1, HG_DRIFT_MULTIPLIER, 0.1);
//set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 10, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_JAB, 10, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_JAB, 10, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
*/







