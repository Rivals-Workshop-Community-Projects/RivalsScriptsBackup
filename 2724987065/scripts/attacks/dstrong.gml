set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("cast_fast"));

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HSPEED, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);

set_num_hitboxes(AT_DSTRONG, 4);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3); // 5
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 13); // 5
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -16); // -15
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 148); // 160
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 37); // 30
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 5); // 11
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 40); // 290
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1); // 1.3
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 10); // 7
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2); // 5
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 13); // 5
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -16); // -15
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 148); // 160
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 37); // 30
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 2); // 11
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 280); // 290
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0); // 1.3
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 5); // 7
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 3);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 2); // 5
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 13); // 5
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -16); // -15
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 148); // 160
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 37); // 30
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 2); // 11
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 280); // 290
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0); // 1.3
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 5); // 7
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_TECHABLE, 3);

set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 2); // 5
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 13); // 5
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -16); // -15
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 148); // 160
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 37); // 30
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 2); // 11
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 280); // 290
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 0); // 1.3
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 5); // 7
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 4, HG_TECHABLE, 3);