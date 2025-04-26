set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

//Startup
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);

//Prepares to Dissapear
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, sound_get("sfx_bat_moon_transform"));

//Active 1
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, sound_get("sfx_bat_moon"));
set_window_value(AT_DATTACK, 3, AG_WINDOW_INVINCIBILITY, 1);

//Active 2
set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX, sound_get("sfx_bat_moon"));
set_window_value(AT_DATTACK, 4, AG_WINDOW_INVINCIBILITY, 1);

//Endlag
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_SFX, sound_get("sfx_bat_moon_transform"));
set_window_value(AT_DATTACK, 5, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 8);

//Top Bat
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 45);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 30);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DATTACK, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_SPRITE, sprite_get("fx_bat"));
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, fx_darkness_hit1);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_HSPEED, -3);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_PARRY_STUN, true);

set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 35);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -70);

set_hitbox_value(AT_DATTACK, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 35);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -60);

set_hitbox_value(AT_DATTACK, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 35);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -50);

set_hitbox_value(AT_DATTACK, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 35);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -40);

set_hitbox_value(AT_DATTACK, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DATTACK, 6, HG_LIFETIME, 35);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_Y, -30);

set_hitbox_value(AT_DATTACK, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 7, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 7, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DATTACK, 7, HG_LIFETIME, 35);
set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_Y, -20);

/*
set_hitbox_value(AT_DATTACK, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DATTACK, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 8, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 8, HG_LIFETIME, 25);
set_hitbox_value(AT_DATTACK, 8, HG_HITBOX_X, -40);
set_hitbox_value(AT_DATTACK, 8, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DATTACK, 8, HG_WIDTH, 70);
set_hitbox_value(AT_DATTACK, 8, HG_HEIGHT, 120);
set_hitbox_value(AT_DATTACK, 8, HG_PRIORITY, 8);
set_hitbox_value(AT_DATTACK, 8, HG_DAMAGE, 10);
set_hitbox_value(AT_DATTACK, 8, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 8, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DATTACK, 8, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 8, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DATTACK, 8, HG_HIT_SFX, asset_get("sfx_blow_medium1"));