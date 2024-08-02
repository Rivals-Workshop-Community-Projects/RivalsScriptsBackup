set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 1);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 1);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 14);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_orca_snow_mouth"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 20);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 8);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 65);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 85);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, -3);
set_hitbox_value(AT_JAB, 1, HG_DRIFT_MULTIPLIER, .1);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_pom_slap1"));
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);



set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 55);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4); 
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 75);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 2, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_DRIFT_MULTIPLIER, .4);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, hitA);



set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 17);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 45);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 2); 
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 80);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, 3, HG_DRIFT_MULTIPLIER, .4);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, hitA2);
set_hitbox_value(AT_JAB, 3, HG_EXTRA_HITPAUSE, 2);

set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 45);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 40);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 2); 
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 100);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_JAB, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, 4, HG_DRIFT_MULTIPLIER, .4);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, hitA2);
set_hitbox_value(AT_JAB, 4, HG_EXTRA_HITPAUSE, 2);




set_hitbox_value(AT_JAB, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 17);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 45);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 2); 
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 80);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 5, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_JAB, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_JAB, 5, HG_DRIFT_MULTIPLIER, .4);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, hitA2);
set_hitbox_value(AT_JAB, 5, HG_EXTRA_HITPAUSE, 2);

set_hitbox_value(AT_JAB, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 6, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 6, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 6, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 45);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 6, HG_WIDTH, 40);
set_hitbox_value(AT_JAB, 6, HG_HEIGHT, 30);
set_hitbox_value(AT_JAB, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 6, HG_DAMAGE, 2); 
set_hitbox_value(AT_JAB, 6, HG_ANGLE, 100);
set_hitbox_value(AT_JAB, 6, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 6, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_JAB, 6, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_JAB, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_JAB, 6, HG_DRIFT_MULTIPLIER, .4);
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT, hitA2);
set_hitbox_value(AT_JAB, 6, HG_EXTRA_HITPAUSE, 2);




set_hitbox_value(AT_JAB, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 7, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 7, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 7, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_JAB, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_X, 17);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 7, HG_WIDTH, 50);
set_hitbox_value(AT_JAB, 7, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 7, HG_DAMAGE, 3); 
set_hitbox_value(AT_JAB, 7, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 7, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_JAB, 7, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_JAB, 7, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_JAB, 7, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_JAB, 7, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_JAB, 7, HG_VISUAL_EFFECT, hitB2);

set_hitbox_value(AT_JAB, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 8, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 8, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 8, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_JAB, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_X, 45);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 8, HG_WIDTH, 45);
set_hitbox_value(AT_JAB, 8, HG_HEIGHT, 35);
set_hitbox_value(AT_JAB, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 8, HG_DAMAGE, 3); 
set_hitbox_value(AT_JAB, 8, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 8, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_JAB, 8, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_JAB, 8, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_JAB, 8, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_JAB, 8, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_JAB, 8, HG_VISUAL_EFFECT, hitB2);