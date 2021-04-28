set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial1"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial1_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL_2, 2);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DRIFT_MULTIPLIER, has_rune("B")?0.01:0.45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, bigstar_effect);