set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("CloverShotMid"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 26);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 4);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, gun_strong);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -3);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 285);
set_hitbox_value(AT_FSTRONG, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, .40);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, gun_strong);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 46);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 56);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, gun_weak);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 54);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 44);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 82);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, gun_weak);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"))