set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

//startup
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, sound_get("ustrongstart"));
//pull up
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("ustrongmiss"));

//hitboxes
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);


//endlag
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 8);

centery = -92;

centerx = 12;

//setup boxes
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, centerx);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, centery);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 110);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USTRONG, 1, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_USTRONG, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 1);


set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, centerx);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, centery);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 1);

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, centerx);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, centery);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 10);

// set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, centerx);
// set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, centery);
// set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
// set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 4);
// set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, -1);
// set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 1);
// set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 10);

set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, centerx);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, centery);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 7);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_USTRONG, 5, HG_EXTRA_HITPAUSE, 3);

//launcher
set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 7, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 7, HG_HITPAUSE_SCALING, 0.8);

set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, centerx);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, centery);
set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 110);
set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_GROUP, 7);
set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW_CREATION_FRAME, 22);
set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, 304);

//pull up
set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 0);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE, 115);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_USTRONG, 8, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USTRONG, 8, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE_FLIPPER, 7);

set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USTRONG, 8, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 8, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 8, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USTRONG, 8, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 8, HG_TECHABLE, 2);

