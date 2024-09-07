set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("final_smash_hurt"));
set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_NUM_WINDOWS, 8);

//Jump
set_window_value(49, 1, AG_WINDOW_LENGTH, 12);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED, 0);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_start"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(49, 2, AG_WINDOW_LENGTH, 12);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(49, 2, AG_WINDOW_HSPEED, 18);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_INVINCIBILITY, 1);

//Land (whiffed)
set_window_value(49, 3, AG_WINDOW_LENGTH, 30);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(49, 3, AG_WINDOW_GOTO, 10);
set_window_value(49, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_SFX, asset_get("sfx_land_heavy"));
set_window_value(49, 3, AG_WINDOW_SFX_FRAME, 1);

//Grabbed someone
set_window_value(49, 4, AG_WINDOW_LENGTH, 20);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(49, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 4, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_start"));
set_window_value(49, 4, AG_WINDOW_SFX_FRAME, 11);
set_window_value(49, 4, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8);
set_window_value(49, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.8);

//Rising
set_window_value(49, 5, AG_WINDOW_LENGTH, 40);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(49, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(49, 5, AG_WINDOW_INVINCIBILITY, 1);

//Falling
set_window_value(49, 6, AG_WINDOW_TYPE, 9);
set_window_value(49, 6, AG_WINDOW_LENGTH, 999);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(49, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.33);
set_window_value(49, 6, AG_WINDOW_VSPEED, 20);
set_window_value(49, 6, AG_WINDOW_INVINCIBILITY, 1);

//Landed
set_window_value(49, 7, AG_WINDOW_LENGTH, 3);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(49, 8, AG_WINDOW_LENGTH, 36);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAME_START, 16);

set_num_hitboxes(49, 2);
//Start
set_hitbox_value(49, 1, HG_MUNO_HITBOX_NAME, "Grab");
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 12);
set_hitbox_value(49, 1, HG_HITBOX_X, 18);
set_hitbox_value(49, 1, HG_HITBOX_Y, -64);
set_hitbox_value(49, 1, HG_WIDTH, 108);
set_hitbox_value(49, 1, HG_HEIGHT, 98);
set_hitbox_value(49, 1, HG_PRIORITY, 2);
set_hitbox_value(49, 1, HG_DAMAGE, 4);
set_hitbox_value(49, 1, HG_ANGLE, 45);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Slam
set_hitbox_value(49, 2, HG_MUNO_HITBOX_NAME, "Slam");
set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_LIFETIME, 3);
set_hitbox_value(49, 2, HG_HITBOX_Y, -24);
set_hitbox_value(49, 2, HG_WIDTH, 148);
set_hitbox_value(49, 2, HG_HEIGHT, 148);
set_hitbox_value(49, 2, HG_PRIORITY, 3);
set_hitbox_value(49, 2, HG_DAMAGE, 20);
set_hitbox_value(49, 2, HG_ANGLE, 50);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, 2);

//Collateral
set_hitbox_value(49, 3, HG_MUNO_HITBOX_NAME, "Explosion Multihits");
set_hitbox_value(49, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 3, HG_LIFETIME, 60);
set_hitbox_value(49, 3, HG_PRIORITY, 4);
set_hitbox_value(49, 3, HG_DAMAGE, 3);
set_hitbox_value(49, 3, HG_ANGLE, 45);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(49, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 3, HG_VISUAL_EFFECT, 143);
set_hitbox_value(49, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(49, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(49, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_PLASMA_SAFE, 1);

//Collateral Final
set_hitbox_value(49, 4, HG_MUNO_HITBOX_NAME, "Explosion Final Hit");
set_hitbox_value(49, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 4, HG_LIFETIME, 3);
set_hitbox_value(49, 4, HG_PRIORITY, 4);
set_hitbox_value(49, 4, HG_DAMAGE, 3);
set_hitbox_value(49, 4, HG_ANGLE, 45);
set_hitbox_value(49, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(49, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(49, 4, HG_BASE_HITPAUSE, 18);
set_hitbox_value(49, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(49, 4, HG_VISUAL_EFFECT, 143);
set_hitbox_value(49, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(49, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(49, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_PLASMA_SAFE, 1);