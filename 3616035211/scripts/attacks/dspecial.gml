var atk = AT_DSPECIAL;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_metal_hit_strong"));
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 11);

//active
num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 3);

set_attack_value(atk, AG_NUM_WINDOWS, num);

num = 1;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_WINDOW, 2);
set_hitbox_value(atk, num, HG_LIFETIME, 4);
set_hitbox_value(atk, num, HG_HITBOX_X, 1);
set_hitbox_value(atk, num, HG_HITBOX_Y, -29);
set_hitbox_value(atk, num, HG_WIDTH, 120);
set_hitbox_value(atk, num, HG_HEIGHT, 120);
set_hitbox_value(atk, num, HG_PRIORITY, 2);
set_hitbox_value(atk, num, HG_DAMAGE, 3);
set_hitbox_value(atk, num, HG_ANGLE, 45);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, num, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(atk, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, num, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, num, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(atk, num, HG_PROJECTILE_PLASMA_SAFE, true);

num++;
set_hitbox_value(atk, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, num, HG_LIFETIME, 4);
set_hitbox_value(atk, num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, num, HG_HITBOX_X, 1);
set_hitbox_value(atk, num, HG_HITBOX_Y, -29);
set_hitbox_value(atk, num, HG_WIDTH, 115);
set_hitbox_value(atk, num, HG_HEIGHT, 115);
set_hitbox_value(atk, num, HG_PRIORITY, 5);
set_hitbox_value(atk, num, HG_DAMAGE, 6);
set_hitbox_value(atk, num, HG_ANGLE, 90);
set_hitbox_value(atk, num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, num, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, num, HG_BASE_HITPAUSE, 20);
set_hitbox_value(atk, num, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(atk, num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, num, HG_HIT_SFX, asset_get("sfx_ell_dspecial_explosion_3"));
set_hitbox_value(atk, num, HG_HIT_LOCKOUT, 3);
set_hitbox_value(atk, num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(atk, num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, num, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, num, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(atk, num, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(atk, num, HG_PROJECTILE_PLASMA_SAFE, true);

set_num_hitboxes(atk, num);