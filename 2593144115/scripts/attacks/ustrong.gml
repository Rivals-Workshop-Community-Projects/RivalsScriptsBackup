set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 12);

set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 12);

set_num_hitboxes(AT_USTRONG, 4);

//regular hits
set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -76);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 98);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -12);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 4);

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 15);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -110);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 56);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -12);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 2, HG_HIT_LOCKOUT, 4);

//sweetspot

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 24);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9.5);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -14);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 3, HG_HIT_LOCKOUT, 5);

//back hit

set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -16);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -106);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 24);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 120);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -12);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));