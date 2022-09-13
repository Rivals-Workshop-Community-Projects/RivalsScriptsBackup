set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("parry"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 1);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_NSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_parry_use"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 0);

set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("gun"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 1);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_NSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_hit"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);


set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 160);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_buzzsaw_hit"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);