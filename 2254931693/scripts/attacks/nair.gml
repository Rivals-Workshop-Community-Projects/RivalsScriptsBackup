set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);

set_attack_value(AT_NAIR, AG_STRONG_CHARGE_WINDOW, 1);


set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, sound_get("bonby_swipe_4"));

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);


set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_NAIR, 2);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 44);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 46);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 46);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 80);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));