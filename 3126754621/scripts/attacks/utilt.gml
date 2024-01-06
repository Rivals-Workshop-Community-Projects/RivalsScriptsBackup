set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 16);

//multihit
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -75);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 110);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_UTILT, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -75);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);

//scoop
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 80);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 60);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UTILT, 3, HG_TECHABLE, 0);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 1);

//launcher
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -75);
set_hitbox_value(AT_UTILT, 4, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 120);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 65);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UTILT, 4, HG_TECHABLE, 0);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 3);

//wing
//multihit
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 0);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -75);
set_hitbox_value(AT_UTILT, 5, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 140);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UTILT, 5, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UTILT, 5, HG_TECHABLE, 0);
set_hitbox_value(AT_UTILT, 5, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 6, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 0);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, 2);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -75);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_GROUP, 2);

//scoop
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW, 0);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 7, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 7, HG_WIDTH, 80);
set_hitbox_value(AT_UTILT, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_UTILT, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 7, HG_ANGLE, 60);
set_hitbox_value(AT_UTILT, 7, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_UTILT, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 7, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 7, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 7, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UTILT, 7, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UTILT, 7, HG_TECHABLE, 0);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_GROUP, 1);

//launcher
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 8, HG_WINDOW, 0);
set_hitbox_value(AT_UTILT, 8, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UTILT, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_X, 2);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_Y, -75);
set_hitbox_value(AT_UTILT, 8, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 8, HG_WIDTH, 150);
set_hitbox_value(AT_UTILT, 8, HG_HEIGHT, 80);
set_hitbox_value(AT_UTILT, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 8, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 8, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 8, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTILT, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 8, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 8, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 8, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_UTILT, 8, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UTILT, 8, HG_TECHABLE, 0);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_GROUP, 3);

//launcher ruby
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 9, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 9, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UTILT, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_X, 2);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_Y, -75);
set_hitbox_value(AT_UTILT, 9, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 9, HG_WIDTH, 120);
set_hitbox_value(AT_UTILT, 9, HG_HEIGHT, 65);
set_hitbox_value(AT_UTILT, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 9, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 9, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 9, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTILT, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 9, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 9, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 9, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_UTILT, 9, HG_VISUAL_EFFECT, HFX_MOL_BOOM_FLARE);
set_hitbox_value(AT_UTILT, 9, HG_TECHABLE, 0);
set_hitbox_value(AT_UTILT, 9, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UTILT, 9, HG_EFFECT, 1);

//launcher bomb
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 10, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 10, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UTILT, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_X, 2);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_Y, -75);
set_hitbox_value(AT_UTILT, 10, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 10, HG_WIDTH, 120);
set_hitbox_value(AT_UTILT, 10, HG_HEIGHT, 65);
set_hitbox_value(AT_UTILT, 10, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 10, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 10, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 10, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTILT, 10, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 10, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_UTILT, 10, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 10, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 10, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_UTILT, 10, HG_VISUAL_EFFECT, HFX_ELL_BOOM_BIG);
set_hitbox_value(AT_UTILT, 10, HG_TECHABLE, 0);
set_hitbox_value(AT_UTILT, 10, HG_HITBOX_GROUP, 3);