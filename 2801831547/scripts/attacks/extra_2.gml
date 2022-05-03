set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("extra2"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_2, AG_AIR_SPRITE, sprite_get("extra2"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("extra2_hurt"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, asset_get("sfx_upbcharge"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED, 0)
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HSPEED, 0)
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 7);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 36);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_num_hitboxes(AT_EXTRA_2, 1);

set_hitbox_value(AT_EXTRA_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 26);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 54);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_2, 1, HG_FINAL_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, hfx_rin_small);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));