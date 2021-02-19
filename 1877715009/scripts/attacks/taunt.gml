// Taunt
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box")); // total 52 frames

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 52);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_taunt"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 1);

// Intro
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("parry2"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("airdodge_hurt"));

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 85);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_zetter_shine_charged"));

// Infamous
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("infamous"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_DTHROW, AG_OFF_LEDGE, 1);
//set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("crouch_hurt"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, sound_get("spray"));

set_num_hitboxes(AT_DTHROW, 1);

set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 2); // sub doll
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 70);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW_CREATION_FRAME, 22);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, -28);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 23);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 27);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 0);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, 0);
// set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1")); //don't want sfx
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("spray"));
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_MASK, sprite_get("spray"));
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_HSPEED, -1.2);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_VSPEED, -2.7);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_GROUND_FRICTION, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_AIR_FRICTION, .009);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 1, HG_PROJECTILE_DESTROY_EFFECT, 14);

// Meme
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("meme"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_NTHROW, AG_OFF_LEDGE, 1);

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 43);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 16);