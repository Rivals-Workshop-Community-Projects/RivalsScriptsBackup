set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

//startup 1
set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
//set_window_value(AT_BAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 1);

//hit 1
set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//startup 2
set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 7); //this recovery time + whifflag is set manually in attack_update, to fix animations
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX_FRAME, 5);
//set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//hit 2
set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);


//startup 3
set_window_value(AT_BAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);

//hit 3
set_window_value(AT_BAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_BAIR, 6, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 6, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_BAIR, 6, AG_WINDOW_HSPEED, 2);
set_window_value(AT_BAIR, 6, AG_WINDOW_HSPEED_TYPE, 0);
//set_window_value(AT_BAIR, 6, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_BAIR, 6, AG_WINDOW_SFX, sound_get("fesliyan_rifle"));
//set_window_value(AT_BAIR, 6, AG_WINDOW_SFX_FRAME, 0);


//recovery
set_window_value(AT_BAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_BAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);



//startup 5

set_num_hitboxes(AT_BAIR, 4);

//main hit.
set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -32);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 68);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 303 ); //"basic small directional"
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
//set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 6);

//spike.
set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 44);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_BAIR, 2, HG_EXTRA_HITPAUSE, 1); //extra hitpause for the grab.
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 305 ); //"basic sweetspot"
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sound_get("bonk"));
set_hitbox_value(AT_BAIR, 2, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_BAIR, 2, HG_SDI_MULTIPLIER, 2); //make this move's followups a little more escapable.
set_hitbox_value(AT_BAIR, 2, HG_HITSTUN_MULTIPLIER, 1.05); //stun longer, so that it can still KO even with the inertia effect

// projectile
set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 0);

set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 24);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 9);
//priority/grouping
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 5); //inflict inertia
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, -1); 
//position
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -16);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -32);
//shape
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 40);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 4);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 1);

//knockback
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.9); 
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 140);
//stun
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 3, HG_HITSTUN_MULTIPLIER, 0.75); 
//effects
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, 3, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 156);

set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("bair_bullet"));
//set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_DESTROY_EFFECT, 193); //rock small

set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0 ); 
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0 ); 
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 0 );
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_IS_TRANSCENDENT, 0 );
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_HSPEED, -40); // >:D
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_VSPEED, 0);



//main hit 2
set_hitbox_value(AT_BAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -8);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -28);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 52);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 28);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, -10);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 303 ); //"basic small directional"
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
//set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 6);

