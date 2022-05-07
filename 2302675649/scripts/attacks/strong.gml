set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("strong"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NTHROW, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("strong_hurt"));

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_ori_bash_use"));

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_NTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NTHROW, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NTHROW, 1);

set_hitbox_value(AT_NTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 64);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_NTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 290);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, has_rune("M")?12:7);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, has_rune("M")?1.5:0.9);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NTHROW, 1, HG_HITSTUN_MULTIPLIER, has_rune("M")?1.15:0.85);