set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_TAUNT, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));
//set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_TAUNT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 32);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_TAUNT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
//set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_consume"));

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 6);


set_num_hitboxes(AT_TAUNT, 0);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 42);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 45);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_EFFECT, 9);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("astral_hand"));
//set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
//set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);


// longer_lasting
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 13);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 42);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_TAUNT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_TAUNT, 2, HG_EFFECT, 9);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_TAUNT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_SPRITE, sprite_get("astral_hand"));
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_ANIM_SPEED, 0.1);
