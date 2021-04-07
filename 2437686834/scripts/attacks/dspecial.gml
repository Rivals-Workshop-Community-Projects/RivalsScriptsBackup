set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial"));
//set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);



//startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 0);

//charging window. The length of this window = the maximum charge time.
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 6); 
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 45);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("revup"));

//charge release window. This window should be at least 2 frames long.
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 47);

//active
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 49);
//set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.001);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, sound_get("enter"));
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, -4);

//recovery
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 50);
//set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, 0);
//set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_DSPECIAL, 2);




//Fire Hydrant Fall
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 100);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("FireHydrant"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("FireHydrantStandHurt"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("FireHydrantStandHurt"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.25);
//set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
//set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0.06);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_LIFESPAN, 999);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);