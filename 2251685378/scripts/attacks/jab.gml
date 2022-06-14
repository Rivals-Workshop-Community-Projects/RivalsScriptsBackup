//Jab combo
set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);

set_num_hitboxes(AT_JAB, 3);

//Jab 1 - Startup
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 3);

//Jab 1 - Attack
set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

//Jab 1 - Follow through
set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 2);

//Jab 2 - Startup
set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//Jab 2 - Attack
set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

//Jab 2 - Follow through
set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 13);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 2);

//Jab 3 - Startup
set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 9);

//Jab 3 - Attack
set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 7);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

//Jab 3 - Follow through
set_window_value(AT_JAB, 9, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 12);


//Jab 1 Hitbox
set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 1, HG_SDI_MULTIPLIER, 1.1);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get ("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, jab1_vfx);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, -40);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -50);

//Jab 2 Hitbox
set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 2, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 2, HG_SDI_MULTIPLIER, 1.1);
set_hitbox_value(AT_JAB, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get ("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, jab2_vfx);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, -40);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -50);

//Jab 3 Hitbox
set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 55);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get ("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, jab3_vfx);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, -40);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, -50);
