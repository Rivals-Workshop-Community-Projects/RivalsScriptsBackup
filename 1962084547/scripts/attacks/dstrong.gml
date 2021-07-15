set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("dstrong3"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);


set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_DSTRONG,2);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 75);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 42);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);

/*set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 0); //old sweetspot
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -41);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 6.66);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX,asset_get("sfx_blow_double1"));
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);*/



set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -40);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 75);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 128);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);
