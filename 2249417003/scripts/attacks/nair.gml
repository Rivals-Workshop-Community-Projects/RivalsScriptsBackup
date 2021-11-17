set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

//first startup

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

//attack startup
set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, sound_get("fesliyan_gunshot2"));
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX_FRAME, 1);





//attack hit
set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

//attack recovery / wait time
set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//final endlag
set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 1);

//main hit.
set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3);
//priority/grouping
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3); 
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1); 
//position
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -24);
//shape
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 72);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.15); //0.05
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
//stun
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_NAIR, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, 1); 
set_hitbox_value(AT_NAIR, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 1, HG_SDI_MULTIPLIER, .75);
//effects
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 1, HG_HIT_LOCKOUT, 3);






// projectile
set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 1);

set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 16);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
//priority/grouping
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1); 
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1); 
//position
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, 0);
//shape
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 12);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 12);

//knockback
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.3); 
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 70); //361
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);
//stun
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITSTUN_MULTIPLIER, 1); 
//effects
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("tiny_hit"));
set_hitbox_value(AT_NAIR, 2, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NAIR, 2, HG_EFFECT, 9); //polite
set_hitbox_value(AT_NAIR, 2,  HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_NAIR, 2,  HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("jab_bullet"));
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_DESTROY_EFFECT, ralsei_fx_dair_spark); 
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, ralsei_fx_dair_spark);


set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0 ); //stop on walls
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0 ); //stop on ground
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 0 );
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, 0 );
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_VSPEED, 0);
