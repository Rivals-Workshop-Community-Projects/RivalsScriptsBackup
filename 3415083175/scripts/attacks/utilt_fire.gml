set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("utilt_fire"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("utilt_fire_hurt"));
set_attack_value(AT_UTHROW, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 4)

set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_ori_superjump_sein"));
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HSPEED, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_UTHROW, 2, AG_WINDOW_VSPEED, -17);
set_window_value(AT_UTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTHROW, 3, AG_WINDOW_VSPEED, 4);
set_window_value(AT_UTHROW, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_UTHROW, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

set_window_value(AT_UTHROW, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTHROW, 4, AG_WINDOW_VSPEED, -4);
set_window_value(AT_UTHROW, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_UTHROW, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

set_num_hitboxes(AT_UTHROW, 2);

//multihit
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 40);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTHROW, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTHROW, 1, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_flareo_rod"));
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, HFX_SHO_FLAME_SMALL);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, 0);

//launcher
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTHROW, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTHROW, 2, HG_WIDTH, 50);
set_hitbox_value(AT_UTHROW, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_UTHROW, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_UTHROW, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTHROW, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_UTHROW, 2, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UTHROW, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UTHROW, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_UTHROW, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_UTHROW, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTHROW, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 2, HG_VISUAL_EFFECT, HFX_SHO_FLAME_BIG);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_GROUP, 1);