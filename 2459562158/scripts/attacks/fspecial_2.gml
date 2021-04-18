set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial_throw_ground"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_throw_ground_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial_throw_air"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_throw_air_hurt"));

set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);

//startup
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_hit"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME,13);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED, 0);

// throw
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED, 0);

// endlag
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_FSPECIAL_2, 1);

// yeet
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 66);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -62);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT,76);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, 0);


