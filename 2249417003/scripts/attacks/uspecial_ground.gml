//uspecial_ground.gml
set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 0); 
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecial_ground"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecial_ground_hurt"));
set_attack_value(AT_USPECIAL_GROUND, AG_OFF_LEDGE, 0);

//startup
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

//gesture
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 5);

//cooldown
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAMES, -2);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAME_START, 2);



set_num_hitboxes(AT_USPECIAL_GROUND, 1);


// projectile
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW_CREATION_FRAME, 1);

set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 640);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 3);
//priority/grouping
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 5); //inflict inertia
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_GROUP, -1); 
//position
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, 0);
//shape
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 28);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_SHAPE, 0);

//knockback
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_KNOCKBACK_SCALING, 0.5); 
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 85);
//stun
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITSTUN_MULTIPLIER, 0.75); 
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_SDI_MULTIPLIER, 0.5); //intended to stun opponents
//effects
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_ell_small_missile_ground"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_LOCKOUT, 0);

set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_SPRITE, sprite_get("uspecial_ground_missile"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_DESTROY_EFFECT, 139); //missile explode small


set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0 );
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_EXTENDED_PARRY_STUN, 1 );
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0 );
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_IS_TRANSCENDENT, 0 );
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PROJECTILE_VSPEED, -20);
