set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("legion_dspecial"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_DSPECIAL_AIR, AG_MUNO_ATTACK_NAME, "DSpecial (Legion)");

// startup
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, sfx_ssbu_shock);

// startup 2
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX, sfx_ssbu_shock_big);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 1);

// active
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

// endlag
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_DSPECIAL_AIR, 0);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 48);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, vfx_hit_small);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_LOCKOUT, 3);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_MUNO_HITBOX_NAME, "Normal");

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 48);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, vfx_hit_big);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_LOCKOUT, 3);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_MUNO_HITBOX_NAME, "Super Charged");