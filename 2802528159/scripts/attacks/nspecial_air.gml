set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("0_nspecial_air"));
set_attack_value(AT_NSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("0_nspecial_air"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 9);
set_attack_value(AT_NSPECIAL_AIR, AG_OFF_LEDGE, 0);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecial_air_hurt"));
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 25);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 18);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_GOTO, 9);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -7);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_SFX, asset_get("sfx_ell_dspecial_drop"));

set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_SFX, asset_get("sfx_charge_blade_swing"));

set_window_value(AT_NSPECIAL_AIR, 8, AG_WINDOW_LENGTH, 17);
set_window_value(AT_NSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAME_START, 19);

set_window_value(AT_NSPECIAL_AIR, 9, AG_WINDOW_TYPE, 7);
set_window_value(AT_NSPECIAL_AIR, 9, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL_AIR, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_AIR, 9, AG_WINDOW_ANIM_FRAME_START, 24);

set_num_hitboxes(AT_NSPECIAL_AIR, 2);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 22);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, -20  + 52);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITSTUN_MULTIPLIER, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, -90);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 0.2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));

set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW, 7);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 1.25);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT, radar_hit);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_EXTRA_CAMERA_SHAKE, 1);