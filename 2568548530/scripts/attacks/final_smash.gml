//

set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_OFF_LEDGE, 1);
set_attack_value(49, AG_SPRITE, sprite_get("finalSmash"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("finalSmash_hurt"));
set_attack_value(49, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(49, AG_NUM_WINDOWS, 4);

//startup
set_window_value(49, 1, AG_WINDOW_LENGTH, 6);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAME_START, 0);

//fly up
set_window_value(49, 2, AG_WINDOW_LENGTH, 6);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(49, 2, AG_WINDOW_VSPEED, -20);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 2);


//spin normal
set_window_value(49, 3, AG_WINDOW_TYPE, 9);
set_window_value(49, 3, AG_WINDOW_LENGTH, 20);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(49, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
//set_window_value(49, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(49, 3, AG_WINDOW_SFX, asset_get("sfx_syl_uspecial_travel_start"));
//set_window_value(49, 3, AG_WINDOW_SFX_FRAME, 15);

//spin skinny
set_window_value(49, 4, AG_WINDOW_TYPE, 9);
set_window_value(49, 4, AG_WINDOW_LENGTH, 20);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 117);
set_window_value(49, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);


set_num_hitboxes(49, 6);

//launch up
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 6);
set_hitbox_value(49, 1, HG_HITBOX_X, 0);
set_hitbox_value(49, 1, HG_HITBOX_Y, -32);
set_hitbox_value(49, 1, HG_WIDTH, 128);//96);
set_hitbox_value(49, 1, HG_HEIGHT, 128);//96);
set_hitbox_value(49, 1, HG_SHAPE, 0);
set_hitbox_value(49, 1, HG_PRIORITY, 9);
set_hitbox_value(49, 1, HG_DAMAGE, 10);
set_hitbox_value(49, 1, HG_ANGLE, 90);
set_hitbox_value(49, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 20);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(49, 1, HG_TECHABLE, 1);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 304);
//set_hitbox_value(49, 1, HG_VISUAL_EFFECT_Y_OFFSET, -32);

//consecutive juggle
set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 2, HG_WINDOW, 2);
set_hitbox_value(49, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(49, 2, HG_LIFETIME, 120);
set_hitbox_value(49, 2, HG_HITBOX_X, 0);
set_hitbox_value(49, 2, HG_HITBOX_Y, -32);
set_hitbox_value(49, 2, HG_WIDTH, 64);//96);
set_hitbox_value(49, 2, HG_HEIGHT, 64);//96);
set_hitbox_value(49, 2, HG_SHAPE, 0);
set_hitbox_value(49, 2, HG_PRIORITY, 7);
set_hitbox_value(49, 2, HG_DAMAGE, 5);
set_hitbox_value(49, 2, HG_ANGLE, 90);
set_hitbox_value(49, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 20);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//repeat hit normal 
set_hitbox_value(49, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 5, HG_WINDOW, 3);
set_hitbox_value(49, 5, HG_LIFETIME, 2);
set_hitbox_value(49, 5, HG_HITBOX_X, 0);
set_hitbox_value(49, 5, HG_HITBOX_Y, -32);
set_hitbox_value(49, 5, HG_WIDTH, 64);//96);
set_hitbox_value(49, 5, HG_HEIGHT, 64);//96);
set_hitbox_value(49, 5, HG_SHAPE, 0);
set_hitbox_value(49, 5, HG_PRIORITY, 1);
set_hitbox_value(49, 5, HG_DAMAGE, 5);
set_hitbox_value(49, 5, HG_ANGLE, 90);
set_hitbox_value(49, 5, HG_ANGLE_FLIPPER, 3);//8);
set_hitbox_value(49, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 5, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(49, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(49, 5, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(49, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//repeat hit skinny spin
set_hitbox_value(49, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 6, HG_WINDOW, 4);
set_hitbox_value(49, 6, HG_LIFETIME, 64);
set_hitbox_value(49, 6, HG_HITBOX_X, 0);
set_hitbox_value(49, 6, HG_HITBOX_Y, -32);
set_hitbox_value(49, 6, HG_WIDTH, 64);//96);
set_hitbox_value(49, 6, HG_HEIGHT, 64);//96);
set_hitbox_value(49, 6, HG_SHAPE, 0);
set_hitbox_value(49, 6, HG_PRIORITY, 1);
set_hitbox_value(49, 6, HG_DAMAGE, 5);
set_hitbox_value(49, 6, HG_ANGLE, 90);
set_hitbox_value(49, 6, HG_ANGLE_FLIPPER, 3);//8);
set_hitbox_value(49, 6, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 6, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(49, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(49, 6, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(49, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));



//flying articles up
set_hitbox_value(49, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(49, 3, HG_WINDOW, 10);
set_hitbox_value(49, 3, HG_LIFETIME, 64);//2);
set_hitbox_value(49, 3, HG_HITBOX_X, 0);
set_hitbox_value(49, 3, HG_HITBOX_Y, 0);
set_hitbox_value(49, 3, HG_WIDTH, 32);//96);
set_hitbox_value(49, 3, HG_HEIGHT, 32);//96);
set_hitbox_value(49, 3, HG_SHAPE, 0);
set_hitbox_value(49, 3, HG_PRIORITY, 8);
set_hitbox_value(49, 3, HG_DAMAGE, 5);
set_hitbox_value(49, 3, HG_ANGLE, 90);
set_hitbox_value(49, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(49, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(49, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(49, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(49, 3, HG_PROJECTILE_MASK, sprite_get("pileAirUpwhite"));//-1);
set_hitbox_value(49, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_PLASMA_SAFE, 1);


//flying articles down
set_hitbox_value(49, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(49, 4, HG_WINDOW, 10);
set_hitbox_value(49, 4, HG_LIFETIME, 64);//2);
set_hitbox_value(49, 4, HG_HITBOX_X, 0);
set_hitbox_value(49, 4, HG_HITBOX_Y, 0);
set_hitbox_value(49, 4, HG_WIDTH, 32);//96);
set_hitbox_value(49, 4, HG_HEIGHT, 32);//96);
set_hitbox_value(49, 4, HG_SHAPE, 0);
set_hitbox_value(49, 4, HG_PRIORITY, 9);
set_hitbox_value(49, 4, HG_DAMAGE, 5);
set_hitbox_value(49, 4, HG_ANGLE, 361); //315);
set_hitbox_value(49, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(49, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(49, 4, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(49, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(49, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(49, 4, HG_PROJECTILE_MASK, sprite_get("pileAirUpwhite"));//-1);
set_hitbox_value(49, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_PLASMA_SAFE, 1);



/*
set_num_hitboxes(49, 5);

//pawn proj on character
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 1, HG_LIFETIME, 20);
set_hitbox_value(49, 1, HG_HITBOX_X, 0);
set_hitbox_value(49, 1, HG_HITBOX_Y, -30);
set_hitbox_value(49, 1, HG_WIDTH, 60);
set_hitbox_value(49, 1, HG_HEIGHT, 120);
set_hitbox_value(49, 1, HG_PRIORITY, 4);
set_hitbox_value(49, 1, HG_DAMAGE, 2);
set_hitbox_value(49, 1, HG_ANGLE, 86);
set_hitbox_value(49, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(49, 1, HG_SHAPE, 2);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 18);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(49, 1, HG_EXTRA_HITPAUSE, 120);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 1, HG_DRIFT_MULTIPLIER, -1);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, -1);

//landing hitbox
set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 4);
set_hitbox_value(49, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 2, HG_LIFETIME, 4);
set_hitbox_value(49, 2, HG_HITBOX_X, 0);
set_hitbox_value(49, 2, HG_HITBOX_Y, -40);
set_hitbox_value(49, 2, HG_WIDTH, 270);
set_hitbox_value(49, 2, HG_HEIGHT, 80);
set_hitbox_value(49, 2, HG_PRIORITY, 5);
set_hitbox_value(49, 2, HG_DAMAGE, 30);
set_hitbox_value(49, 2, HG_ANGLE, 60);
set_hitbox_value(49, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(49, 2, HG_SHAPE, 1);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 16);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 30);
set_hitbox_value(49, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 2, HG_DRIFT_MULTIPLIER, -1);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 155);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 2, HG_HIT_LOCKOUT, 60);

//swipe
set_hitbox_value(49, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 3, HG_WINDOW, 4);
set_hitbox_value(49, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 3, HG_LIFETIME, 4);
set_hitbox_value(49, 3, HG_HITBOX_X, 50);
set_hitbox_value(49, 3, HG_HITBOX_Y, -120);
set_hitbox_value(49, 3, HG_WIDTH, 180);
set_hitbox_value(49, 3, HG_HEIGHT, 180);
set_hitbox_value(49, 3, HG_PRIORITY, 5);
set_hitbox_value(49, 3, HG_DAMAGE, 30);
set_hitbox_value(49, 3, HG_ANGLE, 60);
set_hitbox_value(49, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 3, HG_SHAPE, 0);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 16);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 30);
set_hitbox_value(49, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(49, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 3, HG_DRIFT_MULTIPLIER, -1);
set_hitbox_value(49, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(49, 3, HG_VISUAL_EFFECT, 155);
set_hitbox_value(49, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 3, HG_HIT_LOCKOUT, 60);

//spike
set_hitbox_value(49, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 4, HG_WINDOW, 3);
set_hitbox_value(49, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 4, HG_LIFETIME, 200);
set_hitbox_value(49, 4, HG_HITBOX_X, 0);
set_hitbox_value(49, 4, HG_HITBOX_Y, -80);
set_hitbox_value(49, 4, HG_WIDTH, 140);
set_hitbox_value(49, 4, HG_HEIGHT, 160);
set_hitbox_value(49, 4, HG_PRIORITY, 5);
set_hitbox_value(49, 4, HG_DAMAGE, 15);
set_hitbox_value(49, 4, HG_ANGLE, -90);
set_hitbox_value(49, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 4, HG_SHAPE, 1);
set_hitbox_value(49, 4, HG_BASE_KNOCKBACK, 18);
set_hitbox_value(49, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(49, 4, HG_BASE_HITPAUSE, 20);
set_hitbox_value(49, 4, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(49, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 4, HG_DRIFT_MULTIPLIER, -1);
set_hitbox_value(49, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(49, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(49, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 4, HG_TECHABLE, 3);
set_hitbox_value(49, 4, HG_HIT_LOCKOUT, 0);

//summoned pawn projs
set_hitbox_value(49, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 10, HG_WINDOW, 3);
set_hitbox_value(49, 10, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(49, 10, HG_LIFETIME, 60);
set_hitbox_value(49, 10, HG_HITBOX_X, 0);
set_hitbox_value(49, 10, HG_HITBOX_Y, -30);
set_hitbox_value(49, 10, HG_WIDTH, 60);
set_hitbox_value(49, 10, HG_HEIGHT, 120);
set_hitbox_value(49, 10, HG_PRIORITY, 4);
set_hitbox_value(49, 10, HG_DAMAGE, 2);
set_hitbox_value(49, 10, HG_ANGLE, 86);
set_hitbox_value(49, 10, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(49, 10, HG_SHAPE, 2);
set_hitbox_value(49, 10, HG_BASE_KNOCKBACK, 18);
set_hitbox_value(49, 10, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 10, HG_BASE_HITPAUSE, 20);
set_hitbox_value(49, 10, HG_EXTRA_HITPAUSE, 90);
set_hitbox_value(49, 10, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 10, HG_DRIFT_MULTIPLIER, -1);
set_hitbox_value(49, 10, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(49, 10, HG_VISUAL_EFFECT, 0);

set_hitbox_value(49, 10, HG_PROJECTILE_SPRITE, sprite_get("finalsmash_pawn"));
set_hitbox_value(49, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 10, HG_PROJECTILE_ANIM_SPEED, 0.1);
set_hitbox_value(49, 10, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(49, 10, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(49, 10, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(49, 10, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(49, 10, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(49, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 10, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(49, 10, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 10, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 10, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(49, 10, HG_HITBOX_GROUP, 1);
*/