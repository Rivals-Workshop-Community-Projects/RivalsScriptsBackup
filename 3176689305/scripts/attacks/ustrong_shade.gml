set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_EXTRA_1, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, sound_get("hero_shade_scream_cut"));
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX_FRAME, 8); 

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_EXTRA_1,4);
//1
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -98);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 76);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 94);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_EXTRA_1, 1, HG_HITSTUN_MULTIPLIER, 0.5);
//2
set_hitbox_value(AT_EXTRA_1, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -98);

//3
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, -4);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -115);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 90);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 105);
set_hitbox_value(AT_EXTRA_1, 3, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_EXTRA_1, 3, HG_HITSTUN_MULTIPLIER, 0.5);

//4
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_X, -4);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_Y, -115);
set_hitbox_value(AT_EXTRA_1, 4, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_EXTRA_1, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_WIDTH, 96);
set_hitbox_value(AT_EXTRA_1, 4, HG_HEIGHT, 120);
set_hitbox_value(AT_EXTRA_1, 4, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_EXTRA_1, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_EXTRA_1, 4, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 4, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_EXTRA_1, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_EXTRA_1, 4, HG_VISUAL_EFFECT, fx_shadeb_big);
set_hitbox_value(AT_EXTRA_1, 4, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_EXTRA_1, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_EXTRA_1, 4, HG_HITSTUN_MULTIPLIER, 1);