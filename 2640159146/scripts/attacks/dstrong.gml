set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));


 

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 19);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, sound_get("swingmid"));

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);





set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 19);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_SFX, sound_get("swingmid"));

set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_DSTRONG, 2);



set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 96);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 30);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -18);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 116);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);





set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 95);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 35);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 30);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 86);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 4, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -18);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 116);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 5, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 7);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, -76);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 46);
set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 6, HG_HITSTUN_MULTIPLIER, 1.0);

