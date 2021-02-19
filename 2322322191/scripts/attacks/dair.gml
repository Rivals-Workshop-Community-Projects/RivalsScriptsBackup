set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 4);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 115);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 58);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 8); //old 12
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 99);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 6); //old 7
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 55);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 34);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 10);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 10);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));

set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, -56);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 10);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 10);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 11);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));