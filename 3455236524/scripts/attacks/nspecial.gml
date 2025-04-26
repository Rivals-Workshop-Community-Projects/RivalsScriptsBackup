set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

//Grab Startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);

//Grab Active
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//Grab Whiff + Endlag
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_GOTO, 9);

//Grab Success
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, sound_get("mollo_gunload"));

//Throw Startup
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_ell_uspecial_explode"));
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX_FRAME, 12);

//Throw Active
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);

//Throw Endlag
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_NSPECIAL, 3);

//Grab Hitbox
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 41);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 62);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);

//Opponent Shoot
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 44);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 75);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Grab Hitbox (Projectile Detect)
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 51);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_COLOR, $8f8f8f);

//Enemy Projectile
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 180);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, -10);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 35);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 252);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);