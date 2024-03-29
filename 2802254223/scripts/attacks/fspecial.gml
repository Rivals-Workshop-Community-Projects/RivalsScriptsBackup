set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_FSPECIAL, 0);

//Club
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial-club"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_war_horn"));
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, club_explosion);
//set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
//set_hitbox_value(AT_FSPECIAL, 1, HG_EXTENDED_PARRY_STUN, true);

//Spade
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 200);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("fspecial-spade"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, -0.05);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_orca_bite"));

//Spade multi-hit
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, -1);
//set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 25);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, .6);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//Small Diamond
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 40);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 20);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("fspecial-diamond2"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_COLLISION_SPRITE, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, .3);
//set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
//set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, true);
//set_hitbox_value(AT_FSPECIAL, 4, HG_EXTENDED_PARRY_STUN, true);

//Big Diamond
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 40);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 30);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("fspecial-diamond1"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_COLLISION_SPRITE, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, .3);
//set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
//set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, true);
//set_hitbox_value(AT_FSPECIAL, 5, HG_EXTENDED_PARRY_STUN, true);

//Heart
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 80);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 32);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 32);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("fspecial-heart"));
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, heartHitSmall);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_HSPEED, 7);
//set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, true);
//set_hitbox_value(AT_FSPECIAL, 6, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 6, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, heartHit);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_frog_nspecial_shove"));
