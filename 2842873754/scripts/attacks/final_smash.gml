set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(49, AG_NUM_WINDOWS, 11);

//Startup (Whistle)

set_window_value(49, 1, AG_WINDOW_LENGTH, 12);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 2, AG_WINDOW_LENGTH, 23);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);

//Active
set_window_value(49, 3, AG_WINDOW_LENGTH, 40);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 4, AG_WINDOW_LENGTH, 40);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 5, AG_WINDOW_LENGTH, 30);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(49, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 6, AG_WINDOW_LENGTH, 30);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(49, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 7, AG_WINDOW_LENGTH, 30);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(49, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 7, AG_WINDOW_VSPEED_TYPE, 1);

//Ending

set_window_value(49, 8, AG_WINDOW_LENGTH, 12);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(49, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 8, AG_WINDOW_SFX, sound_get("sfx_dedede_taunt"));
set_window_value(49, 8, AG_WINDOW_SFX_FRAME, 11);
set_window_value(49, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 8, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 9, AG_WINDOW_LENGTH, 40);
set_window_value(49, 9, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(49, 9, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(49, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 9, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 10, AG_WINDOW_LENGTH, 30);
set_window_value(49, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 10, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(49, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 10, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 11, AG_WINDOW_LENGTH, 30);
set_window_value(49, 11, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 11, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(49, 11, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 11, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(49, 1);
set_hitbox_value(49, 1, HG_MUNO_HITBOX_NAME, "Windbox");
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_LIFETIME, 6);
set_hitbox_value(49, 1, HG_HITBOX_X, 0);
set_hitbox_value(49, 1, HG_HITBOX_Y, -48);
set_hitbox_value(49, 1, HG_WIDTH, 512);
set_hitbox_value(49, 1, HG_HEIGHT, 512);
set_hitbox_value(49, 1, HG_PRIORITY, 0);
set_hitbox_value(49, 1, HG_ANGLE, 180);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(49, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(49, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(49, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(49, 1, HG_THROWS_ROCK, 2);
set_hitbox_value(49, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(49, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(49, 2, HG_MUNO_HITBOX_NAME, "Waddle Dee");
set_hitbox_value(49, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 2, HG_LIFETIME, 3);
set_hitbox_value(49, 2, HG_HITBOX_X, 0);
set_hitbox_value(49, 2, HG_HITBOX_Y, -32);
set_hitbox_value(49, 2, HG_WIDTH, 48);
set_hitbox_value(49, 2, HG_HEIGHT, 48);
set_hitbox_value(49, 2, HG_DAMAGE, 2);
set_hitbox_value(49, 2, HG_ANGLE, 60);
set_hitbox_value(49, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 2, HG_PRIORITY, 1);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(49, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(49, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(49, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(49, 2, HG_THROWS_ROCK, 2);

set_hitbox_value(49, 3, HG_MUNO_HITBOX_NAME, "Waddle Doo");
set_hitbox_value(49, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 3, HG_LIFETIME, 3);
set_hitbox_value(49, 3, HG_HITBOX_X, 0);
set_hitbox_value(49, 3, HG_HITBOX_Y, -32);
set_hitbox_value(49, 3, HG_WIDTH, 48);
set_hitbox_value(49, 3, HG_HEIGHT, 48);
set_hitbox_value(49, 3, HG_DAMAGE, 8);
set_hitbox_value(49, 3, HG_ANGLE, 60);
set_hitbox_value(49, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 3, HG_PRIORITY, 1);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(49, 3, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(49, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(49, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(49, 3, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(49, 3, HG_VISUAL_EFFECT, 21);
set_hitbox_value(49, 3, HG_THROWS_ROCK, 2);

set_hitbox_value(49, 4, HG_MUNO_HITBOX_NAME, "Gordo");
set_hitbox_value(49, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 4, HG_LIFETIME, 300);
set_hitbox_value(49, 4, HG_WIDTH, 42);
set_hitbox_value(49, 4, HG_HEIGHT, 42);
set_hitbox_value(49, 4, HG_DAMAGE, 15);
set_hitbox_value(49, 4, HG_ANGLE, 45);
set_hitbox_value(49, 4, HG_PRIORITY, 1);
set_hitbox_value(49, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(49, 4, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(49, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(49, 4, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(49, 4, HG_PROJECTILE_SPRITE, sprite_get("gordo"));
set_hitbox_value(49, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 4, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(49, 4, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(49, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(49, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_DESTROY_EFFECT, 144);
set_hitbox_value(49, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(49, 4, HG_VISUAL_EFFECT, 305);
set_hitbox_value(49, 4, HG_THROWS_ROCK, 2);
set_hitbox_value(49, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(49, 4, HG_HIT_LOCKOUT, 25);
