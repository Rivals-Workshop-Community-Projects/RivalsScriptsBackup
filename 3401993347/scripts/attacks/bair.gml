set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);

//startup
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

//attack
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 6);

//endlag
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 6);


set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 55);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 5);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -56);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -13);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 303);


set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 55);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 5);

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -64);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 55);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 75);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 303);


set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 55);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 5);

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -50);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -76);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 303);


set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 50);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE_FLIPPER, 5);

set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -16);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -22);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 55);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 55);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 301);


set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 5, HG_ANGLE, 50);
set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 5, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_BAIR, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 5, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_BAIR, 5, HG_ANGLE_FLIPPER, 5);

set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, -16);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -29);
set_hitbox_value(AT_BAIR, 5, HG_WIDTH, 55);
set_hitbox_value(AT_BAIR, 5, HG_HEIGHT, 55);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_BAIR, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT, 301);


set_hitbox_value(AT_BAIR, 6, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 6, HG_ANGLE, 50);
set_hitbox_value(AT_BAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 6, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_BAIR, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 6, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_BAIR, 6, HG_ANGLE_FLIPPER, 5);

set_hitbox_value(AT_BAIR, 6, HG_HITBOX_X, -16);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_Y, -42);
set_hitbox_value(AT_BAIR, 6, HG_WIDTH, 55);
set_hitbox_value(AT_BAIR, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_BAIR, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_BAIR, 6, HG_VISUAL_EFFECT, 301);
