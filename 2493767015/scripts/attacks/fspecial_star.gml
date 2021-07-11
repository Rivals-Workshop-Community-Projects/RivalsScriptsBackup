set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial_star"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial_star_air"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("fspecial_leap"));

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX, sound_get("fspecial_swing"));
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_FSPECIAL_2, 2);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 35);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, star_hit);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, -90);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -128);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, sound_get("star_hit"));

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -46);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 105);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, star_hit);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT_X_OFFSET, -90);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -128);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, sound_get("star_hit"));