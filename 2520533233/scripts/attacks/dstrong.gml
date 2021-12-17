set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
// Startup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("DSTRONG"));
//set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 6);

//charge
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//active
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, sound_get("utilt"));

//hold
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
//endlag
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START,5);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, true);

set_num_hitboxes(AT_DSTRONG, 6);

//hilt
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 66);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 193 );
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("hisou_hit4"));

//weak rock
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 99);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("projectile_invis"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 193 );
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));


//weak rock lv 2
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 99);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("projectile_invis"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 40);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 193 );
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_LOCKOUT, 8);


//medium rock
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_LOCKOUT, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 99);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("projectile_invis"));
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 50);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 1.23);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 193 );
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//medium rock lv 2
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 99);
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_SPRITE, sprite_get("projectile_invis"));
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 50);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 1.23);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 193 );
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_LOCKOUT, 8);


//large rock
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 99);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_SPRITE, sprite_get("projectile_invis"));
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 193 );
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_LOCKOUT, 8);

//////////////////////////////////////////////////////////////
/*
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 9999);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 192);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("dstrong_rock"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_MASK, sprite_get("dstrong_rock"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dstrong_rock"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 193);
*/