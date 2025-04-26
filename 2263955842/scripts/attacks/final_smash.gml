set_attack_value(AT_FINAL_SMASH, AG_CATEGORY, 2);
set_attack_value(AT_FINAL_SMASH, AG_SPRITE, sprite_get(""));
set_attack_value(AT_FINAL_SMASH, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FINAL_SMASH, AG_AIR_SPRITE, sprite_get(""));
set_attack_value(AT_FINAL_SMASH, AG_HURTBOX_SPRITE, sprite_get(""));
set_attack_value(AT_FINAL_SMASH, AG_HURTBOX_AIR_SPRITE, sprite_get(""));
set_attack_value(AT_FINAL_SMASH, AG_USES_CUSTOM_GRAVITY,1);

set_attack_value(AT_FINAL_SMASH, AG_NUM_WINDOWS, 3);


//Bullet Hell Active Time
set_window_value(AT_FINAL_SMASH, 1, AG_WINDOW_LENGTH, 180);
set_window_value(AT_FINAL_SMASH, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FINAL_SMASH, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_FINAL_SMASH, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 3);
set_window_value(AT_FINAL_SMASH, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FINAL_SMASH, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FINAL_SMASH, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FINAL_SMASH, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FINAL_SMASH, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);


//Midway point
set_window_value(AT_FINAL_SMASH, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FINAL_SMASH, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FINAL_SMASH, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FINAL_SMASH, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_FINAL_SMASH, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 3);

//Final Hitbox
set_window_value(AT_FINAL_SMASH, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FINAL_SMASH, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FINAL_SMASH, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FINAL_SMASH, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_FINAL_SMASH, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 3);
set_window_value(AT_FINAL_SMASH, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FINAL_SMASH, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FINAL_SMASH, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FINAL_SMASH, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FINAL_SMASH, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FINAL_SMASH, 3, AG_WINDOW_SFX, sound_get("fspe_charge"));
set_window_value(AT_FINAL_SMASH, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FINAL_SMASH, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);





set_num_hitboxes(AT_FINAL_SMASH, 2);

//Bullet Hell Projectile Properties
set_hitbox_value(AT_FINAL_SMASH, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_WINDOW, 666)
set_hitbox_value(AT_FINAL_SMASH, 1, HG_WINDOW_CREATION_FRAME, 666);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_WIDTH, 42);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_ANGLE, 65);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FINAL_SMASH, 1, HG_PROJECTILE_SPRITE, sprite_get("ofuda"));
set_hitbox_value(AT_FINAL_SMASH, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FINAL_SMASH, 1, HG_ANGLE_FLIPPER, 3);



//Final Hit 
set_hitbox_value(AT_FINAL_SMASH, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FINAL_SMASH, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FINAL_SMASH, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FINAL_SMASH, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FINAL_SMASH, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_FINAL_SMASH, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FINAL_SMASH, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FINAL_SMASH, 2, HG_WIDTH, 350);
set_hitbox_value(AT_FINAL_SMASH, 2, HG_HEIGHT, 350);
set_hitbox_value(AT_FINAL_SMASH, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FINAL_SMASH, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FINAL_SMASH, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FINAL_SMASH, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FINAL_SMASH, 2, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_FINAL_SMASH, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FINAL_SMASH, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FINAL_SMASH, 2, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_FINAL_SMASH, 2, HG_VISUAL_EFFECT, 302 );
set_hitbox_value(AT_FINAL_SMASH, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));