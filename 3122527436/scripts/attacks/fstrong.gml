set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 3);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//Startup 1
set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("rev"));

//Startup 2 (Moves back)
set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, -4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);

//Startup 3 (Charge Hold)
set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);


//Post Charge Startup
set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX, sound_get("chainsaw"));

//Initial Active
set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_GOTO, 7);

//Chainsaw Hits (On Hit Only)
set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 13);

//Finisher
set_window_value(AT_FSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 19);

//Endlag 1 (Spawns a chainsaw projectile behind him afterwards... its harmless tho :3)
set_window_value(AT_FSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 10);

set_window_value(AT_FSTRONG, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_FSTRONG,9);

//Initial Hit
set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 84);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("hit4"));
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, -1);

//Multi Hit 1
set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 84);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("hit4"));
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, -1);

//Final Hit
set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 84);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, explosion_big);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("hit1"));

//Multi Hit 2
set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, -1);

//Multi Hit 3
set_hitbox_value(AT_FSTRONG, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, -1);

//Multi Hit 4
set_hitbox_value(AT_FSTRONG, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 6, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 6, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_GROUP, -1);

//Multi Hit 5
set_hitbox_value(AT_FSTRONG, 7, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 7, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 7, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 7, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_GROUP, -1);

//Multi Hit 6
set_hitbox_value(AT_FSTRONG, 8, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 8, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 8, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 8, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_GROUP, -1);

//Saw (Just there for the memes)
set_hitbox_value(AT_FSTRONG, 9, HG_PARENT_HITBOX, 9);
set_hitbox_value(AT_FSTRONG, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 9, HG_WINDOW, 11);
set_hitbox_value(AT_FSTRONG, 9, HG_LIFETIME, 1000);
set_hitbox_value(AT_FSTRONG, 9, HG_HITBOX_X, -32);
set_hitbox_value(AT_FSTRONG, 9, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FSTRONG, 9, HG_WIDTH, 25);
set_hitbox_value(AT_FSTRONG, 9, HG_HEIGHT, 25);
set_hitbox_value(AT_FSTRONG, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 9, HG_DAMAGE, 0);
set_hitbox_value(AT_FSTRONG, 9, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 9, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 9, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSTRONG, 9, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 9, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSTRONG, 9, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 9, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_FSTRONG, 9, HG_VISUAL_EFFECT, explosion_small);
set_hitbox_value(AT_FSTRONG, 9, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 9, HG_PROJECTILE_SPRITE, sprite_get("saw"));
set_hitbox_value(AT_FSTRONG, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 9, HG_HIT_SFX, sound_get("explosion"));
set_hitbox_value(AT_FSTRONG, 9, HG_PROJECTILE_DESTROY_EFFECT, explosion_small);
set_hitbox_value(AT_FSTRONG, 9, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSTRONG, 9, HG_PROJECTILE_HSPEED, -10);
set_hitbox_value(AT_FSTRONG, 9, HG_PROJECTILE_GRAVITY, 0.5);
//set_hitbox_value(AT_FSTRONG, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 9, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSTRONG, 9, HG_IGNORES_PROJECTILES, 1);


