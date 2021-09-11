set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_shop_move"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED, -3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));

set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_SFX, asset_get("sfx_metal_hit_strong"));
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_FSPECIAL_2, 2);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 110);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 44);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj2"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .55);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GROUND_FRICTION, .015);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, .75);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 112);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


//these are spawned by wand hitting the bowling ball

//bair
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, get_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE)); 
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, get_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 60);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, get_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, get_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, get_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, get_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_SHAPE, get_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, get_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE_FLIPPER, get_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE_FLIPPER));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, get_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, get_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, get_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_TECHABLE, get_hitbox_value(AT_FSPECIAL_2, 1, HG_TECHABLE));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, get_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITPAUSE_SCALING, get_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, get_hitbox_value(AT_FSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, get_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_EXTENDED_PARRY_STUN, get_hitbox_value(AT_FSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_PARRY_STUN, get_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_GROUND_BEHAVIOR, get_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, get_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_SPRITE, get_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_SPRITE));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_MASK, get_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_MASK));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_ANIM_SPEED, get_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_HSPEED, -6);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_AIR_FRICTION, get_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_AIR_FRICTION));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_GROUND_FRICTION, get_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GROUND_FRICTION));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_GRAVITY, get_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GRAVITY));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, get_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_DESTROY_EFFECT, get_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_IS_TRANSCENDENT, get_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT));

