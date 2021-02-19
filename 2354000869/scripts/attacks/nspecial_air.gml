set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1); //Charge
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 14);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1); //Throw
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1); //Endlag
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_num_hitboxes(AT_NSPECIAL_AIR, 1);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 99999);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, 12);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj_hurt"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));