set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 7);
//set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 33);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED, -1);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 13);




set_num_hitboxes(AT_DSPECIAL, 4);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, -36);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 48);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 78);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 120);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, -11);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 53);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 24);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 120);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));




set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 29);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 69); //nice
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 18);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 8.2);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
///NAILED IT
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 70);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 41);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 39);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 25);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_PARTICLE_NUM, 1);

//The bat projectile
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 400);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 26);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 24);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 16);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("bat"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_HSPEED, -5);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GRAVITY, 0.2);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GROUND_FRICTION, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 135);
set_hitbox_value(AT_DSPECIAL, 5, HG_THROWS_ROCK, 2);

///Bomb detection
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 30);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 33);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 105);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 18);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 20);
set_hitbox_value(AT_DSPECIAL, 6, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


