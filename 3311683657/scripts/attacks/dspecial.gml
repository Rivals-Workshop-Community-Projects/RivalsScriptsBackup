set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
//set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
//set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));

set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 2);

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_nspecial_grab_miss"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_DSPECIAL, 1);

//nebula explosion
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_DSPECIAL, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_seinhit_weak"));
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, HFX_GEN_SPIN);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 19);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, HFX_ORI_BLUE_SMALL);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);