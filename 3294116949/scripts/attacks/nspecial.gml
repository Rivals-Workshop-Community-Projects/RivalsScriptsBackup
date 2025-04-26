set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_rag_root"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_rag_axe_swing"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, -1);
//set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 13);

set_num_hitboxes(AT_NSPECIAL, 0);


//Set Hitbox Values - This is the basic block of a functional hitbox
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK,-1);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 120); // Swap 1 for what ever window this attack is
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 72);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 60);
//set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 12); 
set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("alt_axe2"));
//set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);


set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);




set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK,-1);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 180); // Swap 1 for what ever window this attack is
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 77);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 120);
//set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, 12); 
set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("alt_axe3"));
//set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_NSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);


set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK,-1);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 11); // Swap 1 for what ever window this attack is
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -15);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 72);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 72);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT, 12); // The crouch cancel Krispy removed for some reason without telling me
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sound_get("axe_poke1"));
//set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, .6);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_IGNORES_PROJECTILES, 1);


set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);


//Set Hitbox Values - This is the basic block of a functional hitbox
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK,-1);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 120); // Swap 1 for what ever window this attack is
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -15);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 72);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 72);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 30);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, HFX_SHO_FLAME_BIG);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_2"));
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_TECHABLE, 1);


set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);




set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK,-1);
set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 4); // Swap 1 for what ever window this attack is
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -15);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 80);//55
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE_FLIPPER, 6);//0
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, HFX_SHO_FLAME_BIG);
set_hitbox_value(AT_NSPECIAL, 5, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, .7);//.8
set_hitbox_value(AT_NSPECIAL, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_LOCKOUT, 10);


set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK,-1);
set_hitbox_value(AT_NSPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 11); // Swap 1 for what ever window this attack is
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -15);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 72);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 72);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, HFX_SHO_FLAME_SMALL);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_NSPECIAL, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_TECHABLE, 4);
// set_hitbox_value(AT_NSPECIAL, 6, HG_SDI_MULTIPLIER, .5);


set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);


set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK,-1);
set_hitbox_value(AT_NSPECIAL, 7, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 120); // Swap 1 for what ever window this attack is
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, -15);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 77);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 44);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 125);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, HFX_SHO_FLAME_SMALL);
set_hitbox_value(AT_NSPECIAL, 7, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_2"));
set_hitbox_value(AT_NSPECIAL, 7, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_NSPECIAL, 7, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_FORCE_FLINCH, 2);


set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 1);


if(has_rune("G")){
    set_hitbox_value(AT_NSPECIAL, 4, HG_EFFECT, 1);
    set_hitbox_value(AT_NSPECIAL, 5, HG_EFFECT, 1);
    set_hitbox_value(AT_NSPECIAL, 6, HG_EFFECT, 1);
    set_hitbox_value(AT_NSPECIAL, 7, HG_EFFECT, 1);
}