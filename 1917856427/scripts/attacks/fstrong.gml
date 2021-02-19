set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG,3);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 43);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -66);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 64);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 35);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.6); //old 0.8
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 57);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -41);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 86);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 35);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.6); //old 0.8
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 67);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -29);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 14);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 35);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.7);  //old 0.9
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 3, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));




