set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_CATEGORY, 0);

//Pre charge
set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);

//Post charge
set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("vigithrow"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

//Active
set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);

//Endlag
set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DSTRONG, 4);

//Dynamite
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, -1);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 43);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 32);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("dynamite"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dynamite"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_GRAVITY, 0.5);
//set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_AIR_FRICTION, 0.05);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0); //-1
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, -1);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//Ground Explosion
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 13);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 44);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_COLLISION_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, fakeEmpty);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Air Explosion
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_COLLISION_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, fakeEmpty);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

if (has_rune("B")){
//Melee
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 35);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 50);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 35);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, HFX_GEN_OMNI);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_birdclap"));
}