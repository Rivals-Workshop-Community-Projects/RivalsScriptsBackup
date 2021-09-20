set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);

//startup
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sfx_nair);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

//multihits
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, sound_get("blade_swing_weak"));
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX_FRAME, 15);

//finisher
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);

//endlag
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 5);

//top right
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 38);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 225);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("blade_hit_weak"));
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 0);

//top left
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 38);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, -45);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("blade_hit_weak"));
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 2, HG_TECHABLE, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 0);

//bottom right
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 38);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 38);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 7);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 120);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, sound_get("blade_hit_weak"));
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 3, HG_TECHABLE, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 0);

//bottom left
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 38);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 38);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 9);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 4, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, sound_get("blade_hit_weak"));
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 4, HG_TECHABLE, 0);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 0);
/*
//multihits 2
set_hitbox_value(AT_NAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 8, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, 1);

//multihits 3
set_hitbox_value(AT_NAIR, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 9, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 10, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 10, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 11, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 11, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 11, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 11, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 12, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 12, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 12, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 12, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_GROUP, 2);

//multihits 3
set_hitbox_value(AT_NAIR, 13, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 13, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 13, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 13, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 14, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 14, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 14, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 14, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 15, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 15, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 15, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 15, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 16, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 16, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 16, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 16, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 16, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 16, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 16, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 16, HG_HITBOX_GROUP, 1);
*/

//launcher
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 10);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -45);
set_hitbox_value(AT_NAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 75);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 75);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, sound_get("blade_hit_medium"));
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 8);

/*
//cursed_hitbox

//front top
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 20);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, -140);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
//back top
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -52);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 25);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, -35);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
//front bottom
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 25);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 25);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 125);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);
//back bottom
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -18);
set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 25);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 25);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 1);
*/