set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 36);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("RCE"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 45);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_gus_land"));
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME, 40);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 26);

set_num_hitboxes(AT_DSTRONG, 2);



set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 220);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 220);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 100);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 35);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 420);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 420);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 1 );
set_hitbox_value(AT_DSTRONG, 3, HG_EFFECT, 9);


set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 408);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 408);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, .6);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 1 );
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("slice"));
