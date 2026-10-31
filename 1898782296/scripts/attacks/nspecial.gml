set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

//Startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

//Hold
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 9999);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//Hit
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_land_med"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//Endlag
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1)
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NSPECIAL, 2);


//Kick hit
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("hit_yi"));

//Small fire
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 125);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 125);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("autobomb_proj_small"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("autobomb_proj_small_coll"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("pyro_hit"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);

//Big fire
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 12);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 90) //+ has_rune("M") * 1000);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 25);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 45);
//set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, phanto_fx);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, sound_get("hit_smb2"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("autobomb_proj_big"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, sprite_get("autobomb_proj_big_coll"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GRAVITY, 0);
//set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_AIR_FRICTION, 0.6 - has_rune("M") * 0.3);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_LOCKOUT, 10);

//Kunk
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 3)
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 35);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 65);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 120);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 9);
//set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_bounce"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
//set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 3);

//Big fire

/*
set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 160);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8)
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.3)
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 4.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1)
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("hit_smb2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 3)
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("sfg_proj"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -0.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1)
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("hit_yi"));
set_hitbox_value(AT_NSPECIAL, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
*/