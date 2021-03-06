set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("idle"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("idle"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_STRONG_CHARGE_WINDOW, 2);

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_frog_croak"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 420);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_frog_gong_hit"));
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 4);


set_num_hitboxes(AT_NSPECIAL_2, 1);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 140);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 140);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 1.6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_GROUP, -1);

