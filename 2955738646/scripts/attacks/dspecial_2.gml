set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial_ground"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 9);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial_ground"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_ground_hurt"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_ground_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1); //Start up
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 9); //Winding up
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1); //Spinnin' 1st (turning)
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, -0.1);

set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_TYPE, 1); //Spinnin' 2nd (normally)
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED, 9);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.3);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_SFX, sound_get("S3&K_spinout2"));

set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_TYPE, 1); //Done, rolling back out
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_VSPEED, -3);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_GOTO, 10);

set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_TYPE, 1); //Readyyyyy
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_VSPEED, 9);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_SFX, sound_get("Mecha_EAUH"));

set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_TYPE, 1); //Goo!
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_HSPEED, 10);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 3);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 3);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_GOTO, 10);

set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_TYPE, 1); //Teleporting and sliding back
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_TYPE, 1); //Teleporting and sliding back
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_HSPEED, -20);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_num_hitboxes(AT_DSPECIAL_2, 5);

//Shmacking away turn
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 85);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 125);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, sound_get("dspecial_turnhit"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_LOCKOUT, 1);

//Delayed hitbox, just sitting there
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 100);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 300);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -905);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, -2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_GROUP, -1);

//The rapid hits after timestop
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW, 10);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, -9000);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WIDTH, 85);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HEIGHT, 85);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 0.5);
//set_hitbox_value(AT_DSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_PARTICLE_NUM, 6);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_SFX, sound_get("timestop_hit"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_LOCKOUT, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_GROUP, -1);

//The ender hit after timestop
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW, 10);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_Y, -9000);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_KNOCKBACK_SCALING, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HIT_PARTICLE_NUM, 6);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_VISUAL_EFFECT, 262);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HIT_SFX, sound_get("timestop_finalhit"));
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_GROUP, -1);

//The hits while moving/turning
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WIDTH, 75);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HEIGHT, 75);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HIT_SFX, sound_get("dspecial_spinhit"));
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HIT_LOCKOUT, 10);
