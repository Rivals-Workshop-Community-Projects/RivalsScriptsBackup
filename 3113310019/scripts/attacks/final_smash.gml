set_attack_value(49, AG_CATEGORY, 0);
set_attack_value(49, AG_NUM_WINDOWS, 11);
set_attack_value(49, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 12);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("plant_food"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(49, 2, AG_WINDOW_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_LENGTH, 8);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(49, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 2, AG_WINDOW_SFX, sound_get("melon_mortar1"));
set_window_value(49, 2, AG_WINDOW_SFX_FRAME, 7);

set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 15);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(49, 4, AG_WINDOW_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_LENGTH, 16);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(49, 5, AG_WINDOW_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_LENGTH, 8);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(49, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 5, AG_WINDOW_SFX, sound_get("melon_mortar2"));
set_window_value(49, 5, AG_WINDOW_SFX_FRAME, 7);

set_window_value(49, 6, AG_WINDOW_TYPE, 1);
set_window_value(49, 6, AG_WINDOW_LENGTH, 12);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(49, 7, AG_WINDOW_TYPE, 1);
set_window_value(49, 7, AG_WINDOW_LENGTH, 8);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(49, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 7, AG_WINDOW_SFX, sound_get("melon_mortar3"));
set_window_value(49, 7, AG_WINDOW_SFX_FRAME, 7);

set_window_value(49, 8, AG_WINDOW_TYPE, 1);
set_window_value(49, 8, AG_WINDOW_LENGTH, 12);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(49, 9, AG_WINDOW_TYPE, 1);
set_window_value(49, 9, AG_WINDOW_LENGTH, 8);
set_window_value(49, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 9, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(49, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 9, AG_WINDOW_SFX, sound_get("melon_mortar4"));
set_window_value(49, 9, AG_WINDOW_SFX_FRAME, 7);

set_window_value(49, 10, AG_WINDOW_TYPE, 1);
set_window_value(49, 10, AG_WINDOW_LENGTH, 12);
set_window_value(49, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 10, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(49, 11, AG_WINDOW_TYPE, 1);
set_window_value(49, 11, AG_WINDOW_LENGTH, 12);
set_window_value(49, 11, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 11, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(49, 3);

// projectile
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 300);
set_hitbox_value(49, 1, HG_HITBOX_X, 0);
set_hitbox_value(49, 1, HG_HITBOX_Y, -68);
set_hitbox_value(49, 1, HG_WIDTH, 56);
set_hitbox_value(49, 1, HG_HEIGHT, 56);
set_hitbox_value(49, 1, HG_PRIORITY, 1);
set_hitbox_value(49, 1, HG_DAMAGE, 8);
set_hitbox_value(49, 1, HG_ANGLE, 90);
set_hitbox_value(49, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 1, HG_HIT_SFX, sound_get("melonimpact3"));
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, splat_effect);
set_hitbox_value(49, 1, HG_PROJECTILE_DESTROY_EFFECT, splat_effect2);
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("melon_big"));
set_hitbox_value(49, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("melon_collision"));
set_hitbox_value(49, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
//set_hitbox_value(49, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(49, 1, HG_PROJECTILE_GRAVITY, 0.6);
set_hitbox_value(49, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(49, 1, HG_HITSTUN_MULTIPLIER, 1);

// splash on hit
set_hitbox_value(49, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 2, HG_LIFETIME, 2);
set_hitbox_value(49, 2, HG_WIDTH, 160);
set_hitbox_value(49, 2, HG_HEIGHT, 120);
set_hitbox_value(49, 2, HG_SHAPE, 2);
set_hitbox_value(49, 2, HG_PRIORITY, 1);
set_hitbox_value(49, 2, HG_DAMAGE, 4);
set_hitbox_value(49, 2, HG_ANGLE, 90);
set_hitbox_value(49, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 2, HG_EFFECT, 19);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(49, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(49, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_PLASMA_SAFE, 1);

// splash on terrain collision
set_hitbox_value(49, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 3, HG_LIFETIME, 12);
set_hitbox_value(49, 3, HG_WIDTH, 120);
set_hitbox_value(49, 3, HG_HEIGHT, 60);
set_hitbox_value(49, 3, HG_SHAPE, 2);
set_hitbox_value(49, 3, HG_PRIORITY, 1);
set_hitbox_value(49, 3, HG_DAMAGE, 4);
set_hitbox_value(49, 3, HG_ANGLE, 90);
set_hitbox_value(49, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(49, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(49, 3, HG_EFFECT, 19);
set_hitbox_value(49, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(49, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(49, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_PLASMA_SAFE, 1);