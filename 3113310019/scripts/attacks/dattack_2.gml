set_attack_value(AT_EXTRA_2, AG_CATEGORY, 0);
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 7);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
/*
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, (asset_get ("mfx_star")));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 5);
*/

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HSPEED, 3);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_HSPEED, 3);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_EXTRA_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_EXTRA_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_2, 6, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_EXTRA_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 7, AG_WINDOW_LENGTH, 21);
set_window_value(AT_EXTRA_2, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_2, 7, AG_WINDOW_ANIM_FRAME_START, 19);

set_num_hitboxes(AT_EXTRA_2, 7);

set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 128);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 55);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_EXTRA_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_EXTRA_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 3, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_2, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_EXTRA_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_EXTRA_2, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 4, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_2, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_EXTRA_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_EXTRA_2, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_2, 4, HG_HITBOX_GROUP, -1);

// projectile
set_hitbox_value(AT_EXTRA_2, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_2, 5, HG_WINDOW, 6);
set_hitbox_value(AT_EXTRA_2, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_2, 5, HG_LIFETIME, 300);
set_hitbox_value(AT_EXTRA_2, 5, HG_HITBOX_X, 22);
set_hitbox_value(AT_EXTRA_2, 5, HG_HITBOX_Y, -24);
set_hitbox_value(AT_EXTRA_2, 5, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_2, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_2, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_2, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_2, 5, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_2, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_2, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_2, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_EXTRA_2, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_EXTRA_2, 5, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_2, 5, HG_HIT_SFX, sound_get("melonimpact"));
set_hitbox_value(AT_EXTRA_2, 5, HG_VISUAL_EFFECT, splat_effect);
set_hitbox_value(AT_EXTRA_2, 5, HG_PROJECTILE_DESTROY_EFFECT, splat_effect2);
set_hitbox_value(AT_EXTRA_2, 5, HG_PROJECTILE_SPRITE, sprite_get("melon_twirl"));
set_hitbox_value(AT_EXTRA_2, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_2, 5, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("melon_collision"));
set_hitbox_value(AT_EXTRA_2, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_2, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_2, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_2, 5, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_2, 5, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_EXTRA_2, 5, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_EXTRA_2, 5, HG_PROJECTILE_GRAVITY, 0.6);
set_hitbox_value(AT_EXTRA_2, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_2, 5, HG_HITSTUN_MULTIPLIER, 0.8);

// splash on hit
set_hitbox_value(AT_EXTRA_2, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_2, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 6, HG_WIDTH, 120);
set_hitbox_value(AT_EXTRA_2, 6, HG_HEIGHT, 120);
set_hitbox_value(AT_EXTRA_2, 6, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_2, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_2, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_2, 6, HG_ANGLE, 55);
set_hitbox_value(AT_EXTRA_2, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_2, 6, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_EXTRA_2, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_2, 6, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_EXTRA_2, 6, HG_EFFECT, 19);
set_hitbox_value(AT_EXTRA_2, 6, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_2, 6, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_EXTRA_2, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_2, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_2, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_2, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_2, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_2, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_2, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_2, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_EXTRA_2, 6, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_2, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_2, 6, HG_HITSTUN_MULTIPLIER, 0.6);

// splash on terrain collision
set_hitbox_value(AT_EXTRA_2, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_2, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 7, HG_WIDTH, 96);
set_hitbox_value(AT_EXTRA_2, 7, HG_HEIGHT, 48);
set_hitbox_value(AT_EXTRA_2, 7, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_2, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_2, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_2, 7, HG_ANGLE, 70);
set_hitbox_value(AT_EXTRA_2, 7, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_EXTRA_2, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_2, 7, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_EXTRA_2, 7, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_EXTRA_2, 7, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_EXTRA_2, 7, HG_EFFECT, 19);
set_hitbox_value(AT_EXTRA_2, 7, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_2, 7, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_EXTRA_2, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_2, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_2, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_2, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_2, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_2, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_2, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_2, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_EXTRA_2, 7, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_2, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_2, 7, HG_HITSTUN_MULTIPLIER, 0.5);