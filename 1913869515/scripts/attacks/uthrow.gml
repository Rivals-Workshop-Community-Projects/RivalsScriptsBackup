set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("JCE"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("JCE_hurt"));

set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion"));
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 40);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_UTHROW, 4, AG_WINDOW_LENGTH, 45);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_UTHROW, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_UTHROW, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_UTHROW, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_SFX, asset_get("sfx_gus_land"));
set_window_value(AT_UTHROW, 4, AG_WINDOW_SFX_FRAME, 40);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_UTHROW, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_window_value(AT_UTHROW, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 25);

set_num_hitboxes(AT_UTHROW, 2);

set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 320);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 320);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_EXTRA_HITPAUSE, 100);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_UTHROW, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 3, HG_WINDOW, 4);
set_hitbox_value(AT_UTHROW, 3, HG_WINDOW_CREATION_FRAME, 25);
set_hitbox_value(AT_UTHROW, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_UTHROW, 3, HG_WIDTH, 320);
set_hitbox_value(AT_UTHROW, 3, HG_HEIGHT, 320);
set_hitbox_value(AT_UTHROW, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_UTHROW, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTHROW, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTHROW, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTHROW, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTHROW, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTHROW, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTHROW, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UTHROW, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 3, HG_VISUAL_EFFECT, 1 );
set_hitbox_value(AT_UTHROW, 3, HG_EFFECT, 9);
set_hitbox_value(AT_UTHROW, 3, HG_HIT_SFX, sound_get("tstrong"));

