set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -7);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 9);
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED, -10);
set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, asset_get("sfx_boss_shine"));
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX_FRAME, -1);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_HSPEED, -8);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED, -10);
set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_SFX, 1);






set_num_hitboxes(AT_DAIR, 2);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 27);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 49);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 41);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("RI"));

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 27);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 41);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 37);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 40);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));