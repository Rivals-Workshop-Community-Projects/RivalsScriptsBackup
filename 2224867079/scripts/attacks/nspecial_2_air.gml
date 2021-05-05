set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("red_nspecial_air"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("red_nspecial_air"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, -2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED, -2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_1, 2, AG_USES_CUSTOM_GRAVITY, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED, -2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED, -2);
set_window_value(AT_EXTRA_1, 3, AG_USES_CUSTOM_GRAVITY, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_EXTRA_1, 1);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 40);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("red_nspecial_air_proj"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, sprite_get("red_nspecial_air_proj"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, 11);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_VSPEED, 15);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DESTROY_EFFECT, 302);