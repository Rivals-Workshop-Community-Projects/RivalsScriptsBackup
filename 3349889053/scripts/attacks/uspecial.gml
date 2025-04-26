set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 8);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_air_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_turn"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 17);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -24);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2)
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_consume"));

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.8);
//set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_sand_screech"));

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, 10);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED, 10);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_GOTO, 4);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.7);

set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_SFX, sound_get("sfx_deracine_ground_stop"));


set_num_hitboxes(AT_USPECIAL, 4);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_PARTICLE_NUM, 2);

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 15);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_FINAL_BASE_KNOCKBACK, 6);



set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 200);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("uspecial_proj_fall"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, -1);
//set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("uspec_proj_collbox"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_VSPEED, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, HFX_GEN_BIG);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, dirt_hfx_weak);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 6)
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, HFX_GEN_BIG);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, dirt_hfx_strong);
