set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);//Startup and Charge
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);//Release Charge
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sfx_bair_3);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);//Active Hitbox 1
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);//Inbetween
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, sfx_bair_3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);//Active Hitbox 2
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);//Endlag
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 2);

//Front Hit
set_hitbox_value(AT_DSTRONG, 1, HG_MUNO_HITBOX_NAME, "Front Hitbox");
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 51);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sfx_smash_ult_sword_hit_medium);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 0);

//Back Hit
set_hitbox_value(AT_DSTRONG, 2, HG_MUNO_HITBOX_NAME, "Back Hitbox");
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -54);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 140);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, -4);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sfx_smash_ult_sword_hit_medium);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 0);