set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);

//shorter end lag after using rock
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//snap
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);

//longer end lag if summoning rock
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_NSPECIAL, 0);

set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
/*
set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
*/

set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .7);
//set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 192);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .25);
//set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .7);
//set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 192);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .25);
//set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_NSPECIAL, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 7.2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
//set_hitbox_value(AT_NSPECIAL, 4, HG_EXTENDED_PARRY_STUN, 1);
//set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_NSPECIAL, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 8.4);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
//set_hitbox_value(AT_NSPECIAL, 5, HG_EXTENDED_PARRY_STUN, 1);
//set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_NSPECIAL, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 9.6);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_VSPEED, 5.4);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
//set_hitbox_value(AT_NSPECIAL, 6, HG_EXTENDED_PARRY_STUN, 1);
//set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_NSPECIAL, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 10.8);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_VSPEED, 5.4);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
//set_hitbox_value(AT_NSPECIAL, 7, HG_EXTENDED_PARRY_STUN, 1);
//set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_UNBASHABLE, 1);