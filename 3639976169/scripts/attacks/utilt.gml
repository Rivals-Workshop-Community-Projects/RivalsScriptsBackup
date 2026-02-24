set_attack_value(AT_UTILT, AG_CATEGORY, 2);
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);


set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, sound_get("donu_powerup"));
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, -5);


set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 2);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_UTILT, 1, HG_EXTRA_HITPAUSE, -4);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, HFX_ORI_BLUE_BIG);

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 1, HG_EXTRA_HITPAUSE, -4);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 2, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -55);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 105);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 105);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, HFX_ORI_BLUE_SMALL);

