set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3)
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 4);//<-- set this to a window that doesn't exist;
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

//startup
set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);

//Uncharged
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swish_weak"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USTRONG, 2);

// Weak Geyser

set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -152);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 20);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 0);


//Linking Hit, Uncharged (Not entirely meant to link, but idk a better name for it)

set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.35);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);


// Depricated, enhanced strongs now use AT_USTRONG_2, AT_FSTRONG_2, and AT_DSTRONG_2

// Strong Geyser
/*
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 20);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -150);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 3, HG_FINAL_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 0);
*/


/*
//Linking Hit, Charged (THIS is meant to link. Always.)

set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 20);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 4, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 1);