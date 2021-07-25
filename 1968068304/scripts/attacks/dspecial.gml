set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2); //
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 11);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));




//initial startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_syl_ustrong_part1"));

//main startup
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//start surfing
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//loop surfing
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);

//raise platform startup
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);

//raise platform pause frame
//set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);

//raise platform post-charge
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);

//raise platform active
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);

//raise platform recovery (go to 'main startup' if the button is held)
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 11);

//move end
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, -1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 1);

//final frame
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 0);

set_num_hitboxes(AT_DSPECIAL, 1);

//normal hit 1.
set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 100);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2); //rounded rectangle
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 7);
//knockback
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5); //KOs at high percents.
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 6); //hit away from epinel
//stun
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_THROWS_ROCK, 1);




/*
//initial startup.
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);



//main startup. If the move is repeated, start at this window.
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
//play sound.
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_waveland_kra"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

//chargable section.
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 50);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
//halt movement while charging.
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 2);

//yeet startup.
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);


//yeet.
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 10);
//set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_start"));

//fixed cooldown.
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 12);
//cancellable cooldown.
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 14);
//set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED, 2);
//set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
//the final windows have extreme friction so that the move slows to a stop.
//set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
//set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);



set_num_hitboxes(AT_DSPECIAL, 11);

//normal hit 1.
set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 84);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 10);
//knockback
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.3); //KOs at high percents.
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 100);
//stun
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_THROWS_ROCK, 1);  //throws rock

//normal hit 2.
set_hitbox_value(AT_DSPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 17);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 56);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 10);
//knockback
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_FINAL_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.3); //KOs at high percents.
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 100);
//stun
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_THROWS_ROCK, 1);  //throws rock

//projectiles.
set_hitbox_value(AT_DSPECIAL, 3, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 16);

set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 15);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 1);
//priority/grouping
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 2); //2nd lowest priority
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 2); //projectiles shouldn't share a group
//position
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 125);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, 1);

//set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
//set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
//shape
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 36);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 0);

//knockback
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0); 
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 135);
//stun
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));//("sfx_ell_drill_stab"));
set_hitbox_value(AT_DSPECIAL, 3, HG_IGNORES_PROJECTILES, 1 ); //need to test what this does, really.
set_hitbox_value(AT_DSPECIAL, 3, HG_SDI_MULTIPLIER, 0.5 ); 
set_hitbox_value(AT_DSPECIAL, 3, HG_DRIFT_MULTIPLIER, 0.5 ); //reduced DI?
set_hitbox_value(AT_DSPECIAL, 3, HG_THROWS_ROCK, 2);  //ignores rock

set_hitbox_value(AT_DSPECIAL, 3, HG_FORCE_FLINCH, 2); //no flinch.


//projectile settings
//this is a motionless projectile that lingers for a while.

set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));// sprite_get("rockshard_two"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 193);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GRAVITY, 0.05);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_VSPEED, 1);


set_hitbox_value(AT_DSPECIAL, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 115);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("rockshard_three"));
//stats
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 48);

set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 2);
//priority/grouping
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 1); //lowest priority
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, 4); //projectiles shouldn't share a group
//position
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 75);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, 1);
//shape
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 36);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 36);




set_hitbox_value(AT_DSPECIAL, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 105);
//stats
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 64);

set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 2);
//priority/grouping
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 1); //lowest priority
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, 5); //projectiles shouldn't share a group
//position
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 50);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, 1);
//shape
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 36);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 36);


//falling projectile
set_hitbox_value(AT_DSPECIAL, 6, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 64);

set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 4);
//priority/grouping
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 5); //inflict inertia
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_GROUP, -1); 
//position
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 50);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, 1);
//shape
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 36);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 36);

//knockback
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.15); 
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 90);
//stun
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 1.2); //!!
//effects
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_LOCKOUT, 1);



set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("plat_shard"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 193); //rock small


set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 0 ); //stop on walls
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1 ); //ignore ground
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 0 );
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, 0 );
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_GRAVITY, 0.25);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_VSPEED, 10);
//set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOUR, 1);



















//anti-projectile projectile
//this projectile only exists to stop other projectiles.
set_hitbox_value(AT_DSPECIAL, 7, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 16);

set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 12);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 0);
//priority/grouping
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 1); //lowest priority
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_GROUP, 9); //projectiles shouldn't share a group
//position
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, 125);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, 1);

//shape
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 36);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 56);
set_hitbox_value(AT_DSPECIAL, 7, HG_SHAPE, 2);

//knockback
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, 0); 
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 90);
//stun
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 0);
//effects
//set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_weak2"));//("sfx_ell_drill_stab"));
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT, 1); //no effect
set_hitbox_value(AT_DSPECIAL, 7, HG_IGNORES_PROJECTILES, 1 ); //need to test what this does, really.
set_hitbox_value(AT_DSPECIAL, 7, HG_SDI_MULTIPLIER, 0 ); 
set_hitbox_value(AT_DSPECIAL, 7, HG_DRIFT_MULTIPLIER, 0 ); //reduced DI?
set_hitbox_value(AT_DSPECIAL, 7, HG_THROWS_ROCK, 2);  //ignores rock

set_hitbox_value(AT_DSPECIAL, 7, HG_FORCE_FLINCH, 2); //no flinch.


set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));// sprite_get("rockshard_two"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, 0 );
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_VSPEED, 0);

*/


