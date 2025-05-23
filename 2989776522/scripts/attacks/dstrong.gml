set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 8);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -75);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 75);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -40);

//spikes for aerial opponents
set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 85);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 65);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 35);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 260);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 3, HG_GROUNDEDNESS, 2);

set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -85);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -10);

//bury hitboxes
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 80);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 55);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 35);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 5, HG_GROUNDEDNESS, 1);

set_hitbox_value(AT_DSTRONG, 6, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, -80);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -10);

//shockwaves
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, 85);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 7, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 7, HG_HEIGHT, 15);
set_hitbox_value(AT_DSTRONG, 7, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 7, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSTRONG, 7, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_HITSTUN_MULTIPLIER, 0.75);

set_hitbox_value(AT_DSTRONG, 8, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_X, -85);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_Y, 0);