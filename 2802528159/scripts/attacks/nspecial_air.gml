set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("041"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_NSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("grab_sound"));
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_GOTO, 7);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.7);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -6);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_SFX, asset_get("sfx_shovel_hit_heavy2"));

set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_SFX, sound_get("grab_sound"));

set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_TYPE, 7);
set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAME_START, 24);

set_num_hitboxes(AT_NSPECIAL_AIR, 2);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 21);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITSTUN_MULTIPLIER, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, -90);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 0.2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));

set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, sound_get("stab2"));
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_EXTRA_CAMERA_SHAKE, 1);