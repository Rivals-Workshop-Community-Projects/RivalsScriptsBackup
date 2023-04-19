set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial_2"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL_2, AG_LANDING_LAG, 12);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial_2"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_2_hurt"));

//Startup
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//Startup 2
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

//Falling
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 10);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_VSPEED, 10);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_GOTO, 6);

//Player Detection Frame
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);


//Player Bounce
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_VSPEED, -8);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_SFX, sound_get("SFX_Waft_Quarter"));

//Ground Detection Frame
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_SFX, asset_get("sfx_blow_heavy2"));

//Ground End Lag
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_DSPECIAL_2, 1);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 52);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_DSPECIAL_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("gascloud"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, .2);

set_hitbox_value(AT_DSPECIAL_2, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 20);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_X, -8);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WIDTH, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HEIGHT, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_SPRITE, sprite_get("gascloud"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_HSPEED, -2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_ANIM_SPEED, .2);