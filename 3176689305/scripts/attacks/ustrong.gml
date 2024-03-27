set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("hero_scream_cut"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 4); 

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USTRONG,4);
//1
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 64);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, fx_soulb_small);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 0.5);
//2
set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -80);

//3
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -92);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 96);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, fx_soulb_small);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_USTRONG, 3, HG_HITSTUN_MULTIPLIER, 0.5);

//4
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -92);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 96);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USTRONG, 4, HG_HITSTUN_MULTIPLIER, 1);