set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
//set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

//startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
//prime shot
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_sand_screech"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 9);
//shoot
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
//recovery
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 5 + has_rune("D"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -5 - has_rune("D"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
//tumble1
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);
//tumble2
set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 9);
//tumble end
set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 7); //pratfall
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 13);

//active.

//set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_launch")); //asset_get("sfx_absa_whip_charge"));

//charged ver. startup.


//charged ver. active.


//recovery.


//pratfall.

//set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, -2);
//set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_sand_screech"));


set_num_hitboxes(AT_USPECIAL, 4);

//ralsei body hitbox
set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 26);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);

//rpg hitbox
set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -39);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 48);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 135);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_FINAL_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);



//rpg projectile
set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 20);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 10);
//priority/grouping
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 1);

//position
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 35);
//shape
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.6); 
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 125);
//stun
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0.9);
//set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_LOCKOUT, 0);

//effects
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
//set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 193); //rock small



set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1 ); //go through walls
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1 ); //go through ground
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 ); //go through enemies
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 0 );
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1 ); //!!!
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_VSPEED, 0);





//bounce damage projectile
set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 0);
//stats
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 20);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 10);
//priority/grouping
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 1);

//position
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, 35);
//shape
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 20);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 0);
//knockback
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.25); 
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 90);
//stun
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_LOCKOUT, 0);

//effects
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));


set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));



set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1 ); //go through walls
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1 ); //go through ground
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 ); //go through enemies
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 0 );
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1 ); 
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_VSPEED, 0);

