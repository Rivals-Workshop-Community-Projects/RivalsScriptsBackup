set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 11);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

cat_attack_spr[AT_JAB] = sprite_get("cat_jab");
cat_attack_hurtbox_spr[AT_JAB] = sprite_get("cat_jab_hurt");
cat_window_amount[AT_JAB] = 11;
cat_window_min[AT_JAB] = 12;
cat_window_max[AT_JAB] = 22;
cat_hitbox_amount[AT_JAB] = 5;
cat_window_hitbox_min[AT_JAB] = 7;
cat_window_hitbox_max[AT_JAB] = 12;

//For Mitama
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1,AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 4);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 5);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 9);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_JAB, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 10, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_JAB, 11, AG_WINDOW_LENGTH, 32);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_JAB, 11, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 11, AG_WINDOW_HAS_WHIFFLAG, 1);

//For Cat
set_window_value(AT_JAB, 12, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 12, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 12, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 12, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 13, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 13, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 13, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 14, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 14, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 14, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 14, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 14, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 14, AG_WINDOW_CANCEL_FRAME, 4);

set_window_value(AT_JAB, 15, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 15, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 15, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 15, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 15, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_JAB, 16, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 16, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 16, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_JAB, 17, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 17, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 17, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 17, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 17, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 17, AG_WINDOW_CANCEL_FRAME, 5);

set_window_value(AT_JAB, 18, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 18, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 18, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_JAB, 19, AG_WINDOW_TYPE, 9);
set_window_value(AT_JAB, 19, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 19, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 19, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 19, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 19, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 20, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 20, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 20, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_JAB, 21, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 21, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 21, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_JAB, 21, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 21, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_JAB, 22, AG_WINDOW_LENGTH, 32);
set_window_value(AT_JAB, 22, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 22, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_JAB, 22, AG_WINDOW_HAS_WHIFFLAG, 1);




set_num_hitboxes(AT_JAB, 6);

//For Mitama
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 56);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 30);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 7);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 52);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 85);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_JAB, 2, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 28);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 42);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 3, HG_HIT_LOCKOUT, 8);
set_hitbox_value(AT_JAB, 3, HG_SDI_MULTIPLIER, 1.01);
set_hitbox_value(AT_JAB, 3, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 28);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 28);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 6, HG_WINDOW, 10);
set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 32);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 6, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 6, HG_HEIGHT, 42);
set_hitbox_value(AT_JAB, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 6, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_JAB, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 6, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_JAB, 6, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 6, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 6, HG_ANGLE_FLIPPER, 6);

//For Cat
set_hitbox_value(AT_JAB, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 7, HG_WINDOW, 13);
set_hitbox_value(AT_JAB, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_Y, -22);
set_hitbox_value(AT_JAB, 7, HG_WIDTH, 64);
set_hitbox_value(AT_JAB, 7, HG_HEIGHT, 34);
set_hitbox_value(AT_JAB, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 7, HG_ANGLE, 30);
set_hitbox_value(AT_JAB, 7, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 7, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 7, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 7, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_JAB, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 8, HG_WINDOW, 16);
set_hitbox_value(AT_JAB, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_Y, -22);
set_hitbox_value(AT_JAB, 8, HG_WIDTH, 64);
set_hitbox_value(AT_JAB, 8, HG_HEIGHT, 34);
set_hitbox_value(AT_JAB, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 8, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 8, HG_ANGLE, 85);
set_hitbox_value(AT_JAB, 8, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 8, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 8, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 8, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_JAB, 8, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 8, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_JAB, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 9, HG_WINDOW, 19);
set_hitbox_value(AT_JAB, 9, HG_LIFETIME, 12);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_Y, -22);
set_hitbox_value(AT_JAB, 9, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 9, HG_HEIGHT, 36);
set_hitbox_value(AT_JAB, 9, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 9, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 9, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 9, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 9, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 9, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_JAB, 9, HG_HIT_LOCKOUT, 8);
set_hitbox_value(AT_JAB, 9, HG_SDI_MULTIPLIER, 1.01);
set_hitbox_value(AT_JAB, 9, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 9, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 10, HG_PARENT_HITBOX, 9);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 10, HG_WINDOW, 19);
set_hitbox_value(AT_JAB, 10, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 10, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_X, 28);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 10, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 11, HG_PARENT_HITBOX, 9);
set_hitbox_value(AT_JAB, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 11, HG_WINDOW, 19);
set_hitbox_value(AT_JAB, 11, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_JAB, 11, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 11, HG_HITBOX_X, 28);
set_hitbox_value(AT_JAB, 11, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 11, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 12, HG_WINDOW, 21);
set_hitbox_value(AT_JAB, 12, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 12, HG_HITBOX_X, 24);
set_hitbox_value(AT_JAB, 12, HG_HITBOX_Y, -22);
set_hitbox_value(AT_JAB, 12, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 12, HG_HEIGHT, 48);
set_hitbox_value(AT_JAB, 12, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 12, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 12, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 12, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 12, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 12, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_JAB, 12, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_JAB, 12, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 12, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_JAB, 12, HG_HITBOX_GROUP, 4);