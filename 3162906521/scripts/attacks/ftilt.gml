set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 8);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_frog_jab"));

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, sound_get("pistol"));

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX, sound_get("pistol"));

set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_SFX, sound_get("pistol_reload"));

set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_SFX, sound_get("pistol"));

set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_FTILT, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTILT, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 9);

//sweetspot 1
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -47);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_FTILT, 1, HG_THROWS_ROCK, 1);
set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);//shot 1

set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 54);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -47);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 2);//shot 2

set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 7);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 54);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -47);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 80);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 3);//shot 3

//sourspots
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 4, HG_EFFECT, 9);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 100);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 93);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 47);
set_hitbox_value(AT_FTILT, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 4, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_FTILT, 4, HG_THROWS_ROCK, 1);
set_hitbox_value(AT_FTILT, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FTILT, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, 1);//shot 1

set_hitbox_value(AT_FTILT, 5, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW, 5);
set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_X, 100);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_GROUP, 2);//shot 2

// set_hitbox_value(AT_FTILT, 5, HG_PARENT_HITBOX, 4);
// set_hitbox_value(AT_FTILT, 5, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_FTILT, 5, HG_WINDOW, 5);
// set_hitbox_value(AT_FTILT, 5, HG_EFFECT, 9);
// set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 6);
// set_hitbox_value(AT_FTILT, 5, HG_HITBOX_X, 100);
// set_hitbox_value(AT_FTILT, 5, HG_HITBOX_Y, -48);
// set_hitbox_value(AT_FTILT, 5, HG_WIDTH, 93);
// set_hitbox_value(AT_FTILT, 5, HG_HEIGHT, 47);
// set_hitbox_value(AT_FTILT, 5, HG_SHAPE, 0);
// set_hitbox_value(AT_FTILT, 5, HG_PRIORITY, 3);
// set_hitbox_value(AT_FTILT, 5, HG_DAMAGE, 1);
// set_hitbox_value(AT_FTILT, 5, HG_ANGLE, 60);
// set_hitbox_value(AT_FTILT, 5, HG_THROWS_ROCK, 1);
// set_hitbox_value(AT_FTILT, 5, HG_BASE_KNOCKBACK, 2);
// set_hitbox_value(AT_FTILT, 5, HG_BASE_HITPAUSE, 4);
// set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT_X_OFFSET, 32);
// set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
// set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
// set_hitbox_value(AT_FTILT, 5, HG_ANGLE_FLIPPER, 6);
// set_hitbox_value(AT_FTILT, 5, HG_HITBOX_GROUP, 2);//shot 2

set_hitbox_value(AT_FTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 6, HG_WINDOW, 7);
set_hitbox_value(AT_FTILT, 6, HG_EFFECT, 9);
set_hitbox_value(AT_FTILT, 6, HG_LIFETIME, 6);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_X, 105);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_Y, -49);
set_hitbox_value(AT_FTILT, 6, HG_WIDTH, 96);
set_hitbox_value(AT_FTILT, 6, HG_HEIGHT, 45);
set_hitbox_value(AT_FTILT, 6, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 6, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FTILT, 6, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 6, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_FTILT, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_GROUP, 3);//shot 3