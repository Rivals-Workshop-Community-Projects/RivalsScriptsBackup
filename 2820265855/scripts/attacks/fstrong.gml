set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//Hit1
set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_CANCEL_FRAME, 4);


//Hit2
set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_CANCEL_FRAME, 4);


//Hit3
set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_FSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_CANCEL_FRAME, 4);

//Hit4
set_window_value(AT_FSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_FSTRONG, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 17);


set_num_hitboxes(AT_FSTRONG,4 + has_rune("J") * 1);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 84);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 3 + has_rune("L") * 1);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -40);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("hmed"));
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 3 + has_rune("L") * 1);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -40);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("hmed"));
set_hitbox_value(AT_FSTRONG, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 84);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 3 + has_rune("L") * 1);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -40);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("hmed"));
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_TECHABLE, 1);

set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 170);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -40);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, sound_get("hstrong"));
set_hitbox_value(AT_FSTRONG, 4, HG_TECHABLE, 1);

set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 8);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 10);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 70);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_SPRITE, sprite_get("bladebeam"));
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 40);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, 67)
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT, 67);