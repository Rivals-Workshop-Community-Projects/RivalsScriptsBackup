set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("cann_hurt"));

// Startup

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_ell_eject"));

// Hitboxes

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);

// Shoot

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 32);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, asset_get("sfx_chester_appear"));

// Endlag

set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);


// Hitboxes

set_num_hitboxes(AT_TAUNT, 4);

// Confetti Red

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 50);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 15);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 15);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
//set_hitbox_value(AT_TAUNT, 1, HG_EXTRA_HITPAUSE, 8);
//set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 50);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
//set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("confettired"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, -2.2);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_AIR_FRICTION, 0.1)
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_FRICTION, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);

// Confetti Green

set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 50);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 15);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 15);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 1);
//set_hitbox_value(AT_TAUNT, 2, HG_EXTRA_HITPAUSE, 8);
//set_hitbox_value(AT_TAUNT, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 50);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
//set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_SPRITE, sprite_get("confettigreen"));
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_GRAVITY, 0.1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_AIR_FRICTION, 0.04)
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_GROUND_FRICTION, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);

// Confetti Blue

set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 3, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT, 3, HG_LIFETIME, 50);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_X, 24);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_TAUNT, 3, HG_WIDTH, 15);
set_hitbox_value(AT_TAUNT, 3, HG_HEIGHT, 15);
set_hitbox_value(AT_TAUNT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 3, HG_DAMAGE, 1);
//set_hitbox_value(AT_TAUNT, 3, HG_EXTRA_HITPAUSE, 8);
//set_hitbox_value(AT_TAUNT, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(AT_TAUNT, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 3, HG_ANGLE, 50);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_TAUNT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
//set_hitbox_value(AT_TAUNT, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_SPRITE, sprite_get("confettiblue"));
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_HSPEED, 3.75);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_GRAVITY, 0.2);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_AIR_FRICTION, 0.06)
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_GROUND_FRICTION, 1);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);

// Confetti Yellow

set_hitbox_value(AT_TAUNT, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 4, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT, 4, HG_LIFETIME, 50);
set_hitbox_value(AT_TAUNT, 4, HG_HITBOX_X, 24);
set_hitbox_value(AT_TAUNT, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_TAUNT, 4, HG_WIDTH, 15);
set_hitbox_value(AT_TAUNT, 4, HG_HEIGHT, 15);
set_hitbox_value(AT_TAUNT, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 4, HG_DAMAGE, 1);
//set_hitbox_value(AT_TAUNT, 4, HG_EXTRA_HITPAUSE, 8);
//set_hitbox_value(AT_TAUNT, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_TAUNT, 4, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(AT_TAUNT, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 4, HG_ANGLE, 50);
set_hitbox_value(AT_TAUNT, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_TAUNT, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
//set_hitbox_value(AT_TAUNT, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_SPRITE, sprite_get("confettiyellow"));
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_AIR_FRICTION, 0.06)
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_GROUND_FRICTION, 10);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
