set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));


set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, sound_get("shock"));

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"))


set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 7 );

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -46);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 43);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 79);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 65);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -46);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 43);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 79);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 3,HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3,HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 3,HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSTRONG, 3,HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 3,HG_HITBOX_X, 85);
set_hitbox_value(AT_DSTRONG, 3,HG_HITBOX_Y, -46);
set_hitbox_value(AT_DSTRONG, 3,HG_WIDTH, 43);
set_hitbox_value(AT_DSTRONG, 3,HG_HEIGHT, 79);
set_hitbox_value(AT_DSTRONG, 3,HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 3,HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 3,HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 3,HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 3,HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 3,HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 3,HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 3,HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 3,HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 3,HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 4,HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4,HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 4,HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 4,HG_HITBOX_X, 53);
set_hitbox_value(AT_DSTRONG, 4,HG_HITBOX_Y, -46);
set_hitbox_value(AT_DSTRONG, 4,HG_WIDTH, 43);
set_hitbox_value(AT_DSTRONG, 4,HG_HEIGHT, 79);
set_hitbox_value(AT_DSTRONG, 4,HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 4,HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 4,HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 4,HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 4,HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 4,HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 4,HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 4,HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 4,HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 4,HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG,5,HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5,HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 5,HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 5,HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 5,HG_HITBOX_X, 8);
set_hitbox_value(AT_DSTRONG, 5,HG_HITBOX_Y, -46);
set_hitbox_value(AT_DSTRONG, 5,HG_WIDTH, 43);
set_hitbox_value(AT_DSTRONG, 5,HG_HEIGHT, 79);
set_hitbox_value(AT_DSTRONG, 5,HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 5,HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 5,HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 5,HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 5,HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 5,HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 5,HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 5,HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 5,HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 5,HG_HITSTUN_MULTIPLIER, 1.0);


set_hitbox_value(AT_DSTRONG,6,HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6,HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 6,HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSTRONG, 6,HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 6,HG_HITBOX_X, -41);
set_hitbox_value(AT_DSTRONG, 6,HG_HITBOX_Y, -46);
set_hitbox_value(AT_DSTRONG, 6,HG_WIDTH, 43);
set_hitbox_value(AT_DSTRONG, 6,HG_HEIGHT, 79);
set_hitbox_value(AT_DSTRONG, 6,HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 6,HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 6,HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 6,HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 6,HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 6,HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 6,HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 6,HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 6,HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 6,HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG,7,HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 7,HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 7,HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_DSTRONG, 7,HG_LIFETIME,12);
set_hitbox_value(AT_DSTRONG, 7,HG_HITBOX_X, -80);
set_hitbox_value(AT_DSTRONG, 7,HG_HITBOX_Y, -46);
set_hitbox_value(AT_DSTRONG, 7,HG_WIDTH, 43);
set_hitbox_value(AT_DSTRONG, 7,HG_HEIGHT, 79);
set_hitbox_value(AT_DSTRONG, 7,HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 7,HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 7,HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 7,HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 7,HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 7,HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 7,HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 7,HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 7,HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 7,HG_HITSTUN_MULTIPLIER, 1.0);