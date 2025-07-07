set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("lalala"));

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("lava"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_FSTRONG, 6);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 128);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 35);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 24);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 2.0);
set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));

set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 120);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 35);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 24);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 2.0);
set_hitbox_value(AT_FSTRONG, 2, HG_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));

set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 126);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);

set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 118);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 0);

set_hitbox_value(AT_FSTRONG, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 134);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSTRONG, 5, HG_SHAPE, 0);

set_hitbox_value(AT_FSTRONG, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 125);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FSTRONG, 6, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_WIDTH, 64);
set_hitbox_value(AT_FSTRONG, 6, HG_HEIGHT, 32);
set_hitbox_value(AT_FSTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 6, HG_ANGLE, 35);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 6, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_HITPAUSE, 24);
set_hitbox_value(AT_FSTRONG, 6, HG_HITPAUSE_SCALING, 2.0);
set_hitbox_value(AT_FSTRONG, 6, HG_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));