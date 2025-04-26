set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);

//startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("fspecial"));

//attack
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_zap"));

//endlag
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);

//no whifflag since its a setup move

set_num_hitboxes(AT_FSPECIAL, 2)

//air hitbox
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 4);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 64);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 15);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 259);
set_hitbox_value(AT_FSPECIAL, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);

//flinch hitbox
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_HITPAUSE, 10);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 64);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_zap"));
set_hitbox_value(AT_FSPECIAL, 2, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 259);
set_hitbox_value(AT_FSPECIAL, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);

//Orbiting Orb
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 32);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 300);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 3, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTRA_CAMERA_SHAKE, -1);

//set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1 );
//Orb Explosion
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 128);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 128);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_FSPECIAL, 4, HG_MUNO_HITBOX_NAME, "Orbsplosion");
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.9 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 1 );

// set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
//Trap Orb light+
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 8.5);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -155);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 100);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 300);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_MUNO_HITBOX_NAME, "Light Trap Orb");
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 29); //29 //14 //0

//Collection orb
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -155);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 300);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_MUNO_HITBOX_NAME, "Trap Orb collectable");
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 6, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, 29); //210
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1);

// set_hitbox_value(AT_FSPECIAL, 5, HG_EFFECT, 9);
//Fading Trap
set_hitbox_value(AT_FSPECIAL, 7, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_ANGLE, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_Y, -155);
set_hitbox_value(AT_FSPECIAL, 7, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL, 7, HG_HEIGHT, 100);
set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 60);
set_hitbox_value(AT_FSPECIAL, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(AT_FSPECIAL, 7, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_FSPECIAL, 7, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_FSPECIAL, 7, HG_VISUAL_EFFECT, 29);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
