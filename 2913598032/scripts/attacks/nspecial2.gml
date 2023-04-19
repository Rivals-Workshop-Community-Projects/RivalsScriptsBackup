set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));

//first startup
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

//gun startup
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("rattle_em_start"));

//gun MID WAIT
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

//gun shoot (this will loop)
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HSPEED, -2);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_SFX, sound_get("rattle_em_end"));

//gun recovery
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 7);

//

set_num_hitboxes(AT_NSPECIAL_2, 1);

// projectile
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 1);
//priority/grouping
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_GROUP, -1); 
//position
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -36);
//shape
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 22);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 1);
//knockback
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.2); 
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 45);
//stun
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 2);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_TECHABLE, 1);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.5);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 1.5); 
//effects
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_LOCKOUT, 1);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_EFFECT, 11);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 196);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_bullet"));
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 193); //rock small
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1 ); 
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1 ); 
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0 );
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 0 );
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 20); // >:)
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_VSPEED, 0);