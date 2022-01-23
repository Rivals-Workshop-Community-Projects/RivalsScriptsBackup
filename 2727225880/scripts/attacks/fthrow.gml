set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_OFF_LEDGE, 0);


set_attack_value(AT_FTHROW, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
//windows

//one is startup,
//2 is grab
//3 is endlag if no grab
//4 is the start of the spin
//5 is the spin
//6 is the kick
//7 is the endlag after the kick
//8 is the roll after the kick

//startup THIS IS FOR SPEEN
set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 8);
//set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 11);  //last frame 

//SPEEEEEN
set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 10);
//set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED, 8);
//set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED, -7);
//set_window_value(AT_FTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_FTHROW, 2, AG_WINDOW_VSPEED, -1);
//set_window_value(AT_FTHROW, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FTHROW, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX_FRAME, 1);  //last frame 

//FALLING AFTER SPEEENING. Necessary for sound... unfort
set_window_value(AT_FTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 19);
//set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FTHROW, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
//set_window_value(AT_FTHROW, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FTHROW, 3, AG_WINDOW_SFX_FRAME, 5);  //last frame 

//KICK
set_window_value(AT_FTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 20);
//set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FTHROW, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
//set_window_value(AT_FTHROW, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HSPEED_TYPE, 2);

//KICK LAG
set_window_value(AT_FTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 21);
//set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FTHROW, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
//set_window_value(AT_FTHROW, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);

//ROLL BACKWARDS
set_window_value(AT_FTHROW, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 24);
//set_window_value(AT_FTHROW, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FTHROW, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
//set_window_value(AT_FTHROW, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_FTHROW, 6, AG_WINDOW_HSPEED, -4);
set_window_value(AT_FTHROW, 6, AG_WINDOW_HSPEED_TYPE, 1);

//STAND UP
set_window_value(AT_FTHROW, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTHROW, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 7, AG_WINDOW_ANIM_FRAME_START, 28);
//set_window_value(AT_FTHROW, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FTHROW, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
//set_window_value(AT_FTHROW, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);


set_num_hitboxes(AT_FTHROW, 2);

//set_hitbox_value(AT_FTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 32);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -15);

set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 0); //30
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 0);//30
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_FTHROW, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("empty_sprite")); //empty_sprite 
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_ANIM_SPEED, .2);
//set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_HSPEED, -7);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_VSPEED, 2);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FTHROW, 1, HG_PROJECTILE_COLLISION_SPRITE, 1);
//set_hitbox_value(AT_FTHROW, 1,HG_PROJECTILE_GRAVITY, 0.2);
set_hitbox_value(AT_FTHROW, 1,HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FTHROW, 1,HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FTHROW, 1,HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FTHROW, 1,HG_PROJECTILE_COLLISION_SPRITE, sprite_get("fthrow_mask"));







//set_hitbox_value(AT_FTHROW, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW, 4);

set_hitbox_value(AT_FTHROW, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTHROW, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FTHROW, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FTHROW, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE, 140);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTHROW, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTHROW, 2, HG_HITPAUSE_SCALING, 0.9);

set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_FTHROW, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
