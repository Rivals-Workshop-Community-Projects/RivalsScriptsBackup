set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));


//startup/charge window
set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

//post-charge
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 0);

//attack
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

//late hit
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
//set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 2);

//recovery
set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG,4);


//main hit 1
set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -65);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 124);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("dr_damage_amp"));
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 8);

//main hit 2
set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 15);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -88);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 34);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("dr_damage"));
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 0 ); 
set_hitbox_value(AT_USTRONG, 2, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 3);


//grenade hitbox
set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 2); //projectile
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 10);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 70);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, 0); 
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 15);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 15);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, .0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HITSTUN_MULTIPLIER, 0);
//set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 14); //smoke small


set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 14); //smoke small
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1 ); //ignore walls
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1 ); //ignore ground
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 ); //don't ignore enemies
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_UNBASHABLE, 1 ); //until I learn how to make articles bash-able
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, 0 );
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_VSPEED, 0);

//grenade explosion
set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 2); //projectile
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 10);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, 0); 
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, sound_get("dr_bomb_small"));
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 141); //missile explode medium


set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
//set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 14); 

set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1 ); //ignore walls
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1 ); //ignore ground
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 ); //ignore enemies
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_VSPEED, 0);

