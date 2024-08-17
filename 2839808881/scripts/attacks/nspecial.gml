set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 6);

//startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);

//inhaling
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//endlag (whiff)
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_GOTO, 7);

//starting the grab
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_GOTO, 10);

//spitting
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 35);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_GOTO, 7);

//swallowing
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 48);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_SFX, sound_get("nspecial_down"));
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_SFX_FRAME, 12);

//endlag
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_GOTO, 10);

//swallowing a projectile
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX, sound_get("nspecial_down"));
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_GOTO, 10);

//spitting a projectile
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_GOTO, 7);

set_num_hitboxes(AT_NSPECIAL, 4);

//Inhale Windbox
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 13);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);

//Inhale Grab-Box
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 22);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("nspecial_succ"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);

//Spit
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 12);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 15);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 45);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, .75);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sound_get("nspecial_spit"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_IGNORES_PROJECTILES, 1);

//Swallow
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 15);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 45);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 45);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 110);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_EFFECT, 9);

//Projectile Star
//(Deals 0.8x original projectile damage.)
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 40);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, star_hit_fx);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_2"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("projectile_star"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_AIR_FRICTION, 0.3);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);