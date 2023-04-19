set_attack_value(AT_NSPECIAL_2_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2_AIR, AG_SPRITE, sprite_get("nspecial2_air"));
set_attack_value(AT_NSPECIAL_2_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_2_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecial2_air_hurt"));

set_window_value(AT_NSPECIAL_2_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2_AIR, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL_2_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2_AIR, 1, AG_WINDOW_SFX, sound_get("speech_bubble"));
set_window_value(AT_NSPECIAL_2_AIR, 1, AG_WINDOW_SFX_FRAME, 17);
set_window_value(AT_NSPECIAL_2_AIR, 1, AG_WINDOW_VSPEED, -1.2);
set_window_value(AT_NSPECIAL_2_AIR, 1, AG_WINDOW_VSPEED_TYPE, 0);

set_window_value(AT_NSPECIAL_2_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2_AIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_2_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2_AIR, 2, AG_WINDOW_VSPEED, -4.4);
set_window_value(AT_NSPECIAL_2_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_NSPECIAL_2_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2_AIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_2_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 8);

set_window_value(AT_NSPECIAL_2_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2_AIR, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NSPECIAL_2_AIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_2_AIR, 4, AG_WINDOW_HAS_WHIFFLAG, 8);

set_num_hitboxes(AT_NSPECIAL_2_AIR, 1);

set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_HITBOX_X, 90);
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_HITBOX_Y, -6);
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_EXTRA_HITPAUSE, 36);
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_HIT_SFX, sound_get("slash2"));
set_hitbox_value(AT_NSPECIAL_2_AIR, 1, HG_HIT_PARTICLE_NUM, 1);