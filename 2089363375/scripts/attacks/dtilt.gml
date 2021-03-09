set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

cat_attack_spr[AT_DTILT] = sprite_get("cat_dtilt");
cat_attack_hurtbox_spr[AT_DTILT] = sprite_get("cat_dtilt_hurt");
cat_window_amount[AT_DTILT] = 5;
cat_window_min[AT_DTILT] = 6;
cat_window_max[AT_DTILT] = 10;
cat_hitbox_amount[AT_DTILT] = 2;
cat_window_hitbox_min[AT_DTILT] = 3;
cat_window_hitbox_max[AT_DTILT] = 4;

//For Mitama
set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DTILT, 3, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//For Cat
set_window_value(AT_DTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 6, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DTILT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 8, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DTILT, 8, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DTILT, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 9, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 9, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DTILT, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 10, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 10, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTILT, 10, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT,2);

//For Mitama
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 1, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 7);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 76);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 24);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 85);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//For Cat
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 7);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 28);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DTILT, 3, HG_ANGLE_FLIPPER, 4);

set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 9);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DTILT, 4, HG_WIDTH, 76);
set_hitbox_value(AT_DTILT, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_DTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 85);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));