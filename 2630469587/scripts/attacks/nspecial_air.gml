//N-Special used while following Youmu.
//This move isn't technically linked to any phantom functionality, so feel free to replace it with whatever you'd like.

set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("nspecialair"));
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecialair_hurt"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("nspecialair"));

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_SFX, sound_get("myonnb"));
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_SFX, asset_get("sfx_land"));
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_NSPECIAL_AIR, 8);

//Melee hitbox copied from jab. Adjust as needed.
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_swipe_medium1"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_LIFETIME, 100);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_Y, -14);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_PARRY_STUN, 1);
//set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITSTUN_MULTIPLIER, 1.3);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("projectile_arrow"));
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_MASK, sprite_get("projectile_arrow"));
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_HSPEED, 0.005);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_AIR_FRICTION, -0.15);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);

set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_LIFETIME, 100);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITBOX_Y, -14);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_PARRY_STUN, 1);
//set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITSTUN_MULTIPLIER, 1.3);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_PROJECTILE_SPRITE, sprite_get("projectile_arrow"));
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_PROJECTILE_MASK, sprite_get("projectile_arrow"));
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_PROJECTILE_HSPEED, -0.005);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_PROJECTILE_AIR_FRICTION, -0.15);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);

set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_LIFETIME, 120);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PARENT_HITBOX, 2);

set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_LIFETIME, 120);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_Y, -58);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PARENT_HITBOX, 2);

//hitbox to animate startup of projectile
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_LIFETIME, 19);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_X, 82);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_Y, -14);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_WIDTH, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HEIGHT, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_PROJECTILE_PARRY_STUN, 1); // Remove if you can make this unparryable somehow
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_PROJECTILE_SPRITE, sprite_get("projectilestart"));
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_PROJECTILE_MASK, sprite_get("null"));
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_PROJECTILE_ANIM_SPEED, 2.5);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_LIFETIME, 18);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITBOX_X, 62);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITBOX_Y, -44);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_PARENT_HITBOX, 5);

set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_LIFETIME, 18);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITBOX_X, 42);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITBOX_Y, -74);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PARENT_HITBOX, 5);