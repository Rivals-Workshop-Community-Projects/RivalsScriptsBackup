set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);


set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, -1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 11);

set_num_hitboxes(AT_FSTRONG, 2);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 84);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, vfx_b);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 10);


set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, vfx_b);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 10);