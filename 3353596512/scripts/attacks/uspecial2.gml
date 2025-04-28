//company cruiser
set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 9);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial2_hurt"));
set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

//get in cruiser
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, sound_get("uspec2_door"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 18);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.05);

//charge
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.05);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

//boost startup
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.05);

//initial boost
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

//flying (ascent)
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);

//flying (apex)
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_CUSTOM_GRAVITY, 1.3);

//flying (descent)
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_CUSTOM_GRAVITY, 1.4);

//crash
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_SFX, sound_get("uspec2_explode"));
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_SFX_FRAME, 14);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_GOTO, 11);

//eject
set_window_value(AT_USPECIAL_2, 9, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 9, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(AT_USPECIAL_2, 7);

//initial boost
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, -30);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -66);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 120);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 144);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_OVERTIME_CREDIT, 5);

//flying (ascent)
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 184);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 184);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_OVERTIME_CREDIT, 5);

//flying (descent)
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 12);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WIDTH, 184);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HEIGHT, 184);
set_hitbox_value(AT_USPECIAL_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL_2, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_TECHABLE, 3);

//crash
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WIDTH, 182);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HEIGHT, 68);
set_hitbox_value(AT_USPECIAL_2, 4, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL_2, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL_2, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_GROUP, 3);
//set_hitbox_value(AT_USPECIAL_2, 4, HG_HIT_LOCKOUT, 25);

//explosion
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_2, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WIDTH, 130);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HEIGHT, 130);
set_hitbox_value(AT_USPECIAL_2, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 5, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_PARRY_STUN, true);
//set_hitbox_value(AT_USPECIAL_2, 5, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_VISUAL_EFFECT, 253);
set_hitbox_value(AT_USPECIAL_2, 5, HG_MUNO_HITBOX_NAME, "Explosion");
set_hitbox_value(AT_USPECIAL_2, 5, HG_OVERTIME_CREDIT, 5);

//run over front
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 6, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_X, 50);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HEIGHT, 72);
set_hitbox_value(AT_USPECIAL_2, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL_2, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_2, 6, HG_ANGLE, 361);
set_hitbox_value(AT_USPECIAL_2, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_2, 6, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL_2, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL_2, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USPECIAL_2, 6, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_USPECIAL_2, 6, HG_OVERTIME_CREDIT, 5);

//run over rear
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 7, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_X, -66);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL_2, 7, HG_WIDTH, 42);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HEIGHT, 72);
set_hitbox_value(AT_USPECIAL_2, 7, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL_2, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_2, 7, HG_ANGLE, 361);
set_hitbox_value(AT_USPECIAL_2, 7, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_USPECIAL_2, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_2, 7, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL_2, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL_2, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USPECIAL_2, 7, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_USPECIAL_2, 7, HG_OVERTIME_CREDIT, 5);
