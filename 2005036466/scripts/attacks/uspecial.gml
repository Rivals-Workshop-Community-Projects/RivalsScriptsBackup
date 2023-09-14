set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("penny_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial_start"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_GOTO, 6);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 4);


set_num_hitboxes(AT_USPECIAL, 1);

// Cypher
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -88);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 35);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, vfx_fspecialhit);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, vfx_fspecialhit);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_metal_hit_weak"));
set_hitbox_value(AT_USPECIAL, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, .50);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("uspecial_proj"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .125);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, -4.5);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 60);

// Charged USpecial
set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("penny_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial_start"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_GOTO, 6);

set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 12);


set_num_hitboxes(AT_USPECIAL_2, 8);

// Hit One
set_hitbox_value(AT_USPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 69);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 93);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, vfx_fspecialhit);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);

//
set_hitbox_value(AT_USPECIAL_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 69);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 93);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, vfx_fspecialhit);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));

set_hitbox_value(AT_USPECIAL_2, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -29);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -29);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_Y, -29);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL_2, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_Y, -29);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 7, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 7, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 7, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USPECIAL_2, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_X, 7);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_Y, -29);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL_2, 8, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HEIGHT, 110);
set_hitbox_value(AT_USPECIAL_2, 8, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 8, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL_2, 8, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL_2, 8, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_USPECIAL_2, 8, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_USPECIAL_2, 8, HG_VISUAL_EFFECT, vfx_penstronghit);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));