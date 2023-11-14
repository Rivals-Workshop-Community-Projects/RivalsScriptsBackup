set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));

//first startup
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

//gun startup
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 60);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("big_iron_on_his_hip"));

//gun shoot
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HSPEED, -3);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_SFX, sound_get("fesliyan_magnum"));

//gun recovery
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);

//

set_num_hitboxes(AT_NSPECIAL_2, 2);

// projectile
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 18);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 8);
//priority/grouping
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 5); //inflict inertia
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_GROUP, -1); 
//position
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -46);
//shape
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 22);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 1);
//knockback
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.2); 
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 45);
//stun
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 80);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.5);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 1.5); 
//effects
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, sound_get("big_iron_on_his_hiiip"));
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