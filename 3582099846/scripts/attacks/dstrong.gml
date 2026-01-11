set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//Startup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);

//Startup 2
set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//Active
set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 27);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 1);

//End Lag // Finisher
set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 16);

// set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_blow_medium3"));
// set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME, 1);

//End Lag 2
set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 5);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 160);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 42);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 110);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 42);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 160);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 42);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 21);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 160);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 56);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 42);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSTRONG, 4, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 95);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));