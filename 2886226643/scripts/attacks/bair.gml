set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

//startup 1
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 7);

//active spin
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//endlag 1
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_GOTO, 7);

//startup 2
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 4, AG_WINDOW_SFX_FRAME, 6);

//active swing
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 11);

//endlag 2
set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 11);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_BAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 10);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -21);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 68);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 51);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 120);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, 23);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -49);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 63);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 52);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 120);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -21);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -23);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 68);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 51);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 120);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, 23);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -49);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 63);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 52);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 120);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_BAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, -21);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -23);
set_hitbox_value(AT_BAIR, 5, HG_WIDTH, 68);
set_hitbox_value(AT_BAIR, 5, HG_HEIGHT, 51);
set_hitbox_value(AT_BAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 5, HG_ANGLE, 120);
set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_BAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_BAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_X, 23);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_Y, -49);
set_hitbox_value(AT_BAIR, 6, HG_WIDTH, 63);
set_hitbox_value(AT_BAIR, 6, HG_HEIGHT, 52);
set_hitbox_value(AT_BAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 6, HG_ANGLE, 120);
set_hitbox_value(AT_BAIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 6, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_BAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 7, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_BAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_X, -21);
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_Y, -22);
set_hitbox_value(AT_BAIR, 7, HG_WIDTH, 73);
set_hitbox_value(AT_BAIR, 7, HG_HEIGHT, 57);
set_hitbox_value(AT_BAIR, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 7, HG_ANGLE, 120);
set_hitbox_value(AT_BAIR, 7, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_BAIR, 7, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_BAIR, 7, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_BAIR, 7, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR, 7, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_BAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 8, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_BAIR, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 8, HG_HITBOX_X, 26);
set_hitbox_value(AT_BAIR, 8, HG_HITBOX_Y, -49);
set_hitbox_value(AT_BAIR, 8, HG_WIDTH, 69);
set_hitbox_value(AT_BAIR, 8, HG_HEIGHT, 57);
set_hitbox_value(AT_BAIR, 8, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 8, HG_ANGLE, 120);
set_hitbox_value(AT_BAIR, 8, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_BAIR, 8, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_BAIR, 8, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_BAIR, 8, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR, 8, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_BAIR, 8, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_BAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 9, HG_WINDOW, 5);
set_hitbox_value(AT_BAIR, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 9, HG_HITBOX_X, -19);
set_hitbox_value(AT_BAIR, 9, HG_HITBOX_Y, -61);
set_hitbox_value(AT_BAIR, 9, HG_WIDTH, 114);
set_hitbox_value(AT_BAIR, 9, HG_HEIGHT, 104);
set_hitbox_value(AT_BAIR, 9, HG_PRIORITY, 8);
set_hitbox_value(AT_BAIR, 9, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 9, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 9, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 9, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_BAIR, 9, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_BAIR, 9, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_BAIR, 9, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_BAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 10, HG_WINDOW, 5);
set_hitbox_value(AT_BAIR, 10, HG_LIFETIME, 5);
set_hitbox_value(AT_BAIR, 10, HG_HITBOX_X, -7);
set_hitbox_value(AT_BAIR, 10, HG_HITBOX_Y, -20);
set_hitbox_value(AT_BAIR, 10, HG_WIDTH, 127);
set_hitbox_value(AT_BAIR, 10, HG_HEIGHT, 73);
set_hitbox_value(AT_BAIR, 10, HG_PRIORITY, 6);
set_hitbox_value(AT_BAIR, 10, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 10, HG_ANGLE, 270);
set_hitbox_value(AT_BAIR, 10, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 10, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 10, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_BAIR, 10, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_BAIR, 10, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_BAIR, 10, HG_HITBOX_GROUP, 5);