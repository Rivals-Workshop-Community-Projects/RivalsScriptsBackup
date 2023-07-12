set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 11);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

//Initial Start-Up
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("SFX_WarioBike_Accel"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 11);

//Ride Forward
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("SFX_WarioBike_Idle"));

//Turn Around
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_GOTO, 2);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);

// 4-6 Wheelie

//Ride Forward (Aerial)
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 6);


//Jump Off (Startup)
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 7);

//Jump Off (Leap)
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_FSPECIAL, 9, AG_WINDOW_VSPEED, -12);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 2);

//Hit Wall 1
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_SFX, asset_get("sfx_blow_heavy1"));

//Hit Wall 2
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 18);


set_num_hitboxes(AT_FSPECIAL, 2);

//Cosmetic Smoke
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 18);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, -64);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_smoke"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("fspecial_smoke"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, 1);

//Cosmetic Smoke (aerial)
set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 1)
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 18);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, -36);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -72);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 0);

//Riding Hitbox
set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 16);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Rolling Hitbox (Bailed Off)
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 48);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL, 4, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_LOCKOUT, 20);

set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);

//Launched/Thrown Hitbox
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 64);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL, 5, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_LOCKOUT, 20);

set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 1);