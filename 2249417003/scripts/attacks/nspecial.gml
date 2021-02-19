set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 8);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));



//first startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);

//gun startup
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);

//gun shoot
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, -3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("fesliyan_magnum"));

//gun recovery
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//reload 1
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 25);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);
//set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED, 0.5);
//set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);

//reload 2
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 28);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);
//set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED, 0.5);
//set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);

//reload complete
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 11);

//endlag
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 6);

//

set_num_hitboxes(AT_NSPECIAL, 2);

// projectile
set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);

set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 21);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 8);
//priority/grouping
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 5); //inflict inertia
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1); 
//position
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -40);
//shape
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 22);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 1);

//knockback
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8); 
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);
//stun
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.6); 
//effects
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 12); //crouch armors through the projectile, for the few characters that can't crouch clean under it

set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 196);

set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_bullet"));
//set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 193); //rock small


set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1 ); 
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1 ); 
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0 );
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 0 );
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 20); // >:)
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);

//reload hitbox
set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 5); 
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 1);
//priority/grouping
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1); //highest priority
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, 3); 
//position
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, -5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -20);
//shape
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.2); //0.7
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 100);
//stun
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.75);

set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 304 );
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2")); //("sfx_ell_drill_stab"));





