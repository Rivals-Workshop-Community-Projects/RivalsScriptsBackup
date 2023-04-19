set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
//pullback
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
//swipedown
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("sk1"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
//startupforbigswing
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
//bigswing
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 22);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8)
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
//recover
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 14)
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 10)

set_num_hitboxes(AT_NSPECIAL, 5);

set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
//set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 95);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 95);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 95);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));

set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 999);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 50);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 75);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 4, HG_EFFECT, 11);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 30);
//set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 7);//12
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, .07);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_LOCKOUT, 33);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_burnconsume"));

//beem
set_hitbox_value(AT_NSPECIAL, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("beem")); 
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, beemmiss);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, beemhit );
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 600);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 45);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 85);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, .90);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 15);
//set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, sprite_get("beemmiss"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_AIR_FRICTION, .1);
//set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, .1);
//set_hitbox_value(AT_NSPECIAL, 5, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, sound_get("sk2"));

set_hitbox_value(AT_NSPECIAL, 6, HG_PARENT_HITBOX, 0);
//set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 4);
//set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 32);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 9);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 2.1);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 95);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));