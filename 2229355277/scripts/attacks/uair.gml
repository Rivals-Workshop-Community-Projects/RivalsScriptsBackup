set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR,5);

// Hit 1 Sweet Spot
set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -32);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -94);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 46);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 368);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .25);
//set_hitbox_value(AT_UAIR, 1, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 28);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);

// Weak Hit 1
set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -8);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -67);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 48);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .25);
//set_hitbox_value(AT_UAIR, 2, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 28);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -15);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);

// Second Hit
set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -92);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 48);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 368);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .25);
//set_hitbox_value(AT_UAIR, 3, HG_EXTRA_HITPAUSE, -3);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 28);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 2);

// Last Hit
set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -94);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 46);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 46);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 76);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 28);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 3);

//Sweetspot, close to Saffron
set_hitbox_value(AT_UAIR, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 21);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -65);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 58);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 54);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 76);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 3);
