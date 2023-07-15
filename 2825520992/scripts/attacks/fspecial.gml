set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

//Startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 9);

//Grab Active
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//Whiff animation/endlag
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_GOTO, 10);

//Success -> Starts the grab
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_GOTO, 5);

//Spins the opponent
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX_FRAME, 3);

//Prepares to Throw (Transitions to the directions)
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_GOTO, 8);

//Throws Forward
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_GOTO, 10);

//Throws Upward
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_GOTO, 10);

//Throws Backward
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 29);

set_num_hitboxes(AT_FSPECIAL, 4);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 29);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 74);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 86);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 420);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 27);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -64);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -64);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, -22);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -63);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 135);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, 4);