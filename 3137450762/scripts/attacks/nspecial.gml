//La Reina nspecial.gml
set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 6);
//set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

//Startup 1
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

//Startup 2
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
/* set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2")); */

//Startup 3
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

//Attack
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy1"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);

//Pose Hold
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);

//Recovery
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

//Magnetize chair test - Hold
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);
//Magnetize chair test - Recover
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 9);
//Chair catch hit test
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 10);


set_num_hitboxes(AT_NSPECIAL, 4);


var box = 1; //Top
set_hitbox_value(AT_NSPECIAL, box, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, box, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, box, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, box, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, box, HG_HITBOX_X, 2);
set_hitbox_value(AT_NSPECIAL, box, HG_HITBOX_Y, -128);
set_hitbox_value(AT_NSPECIAL, box, HG_WIDTH, 92);
set_hitbox_value(AT_NSPECIAL, box, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL, box, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, box, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, box, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_NSPECIAL, box, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, box, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, box, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, box, HG_KNOCKBACK_SCALING, 0.93);
set_hitbox_value(AT_NSPECIAL, box, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_NSPECIAL, box, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, box, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_NSPECIAL, box, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));

box = 2; //Middle
set_hitbox_value(AT_NSPECIAL, box, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, box, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, box, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, box, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, box, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, box, HG_HITBOX_Y, -86);
set_hitbox_value(AT_NSPECIAL, box, HG_WIDTH, 96);
set_hitbox_value(AT_NSPECIAL, box, HG_HEIGHT, 155);
set_hitbox_value(AT_NSPECIAL, box, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, box, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, box, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_NSPECIAL, box, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, box, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, box, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, box, HG_KNOCKBACK_SCALING, 0.93);
set_hitbox_value(AT_NSPECIAL, box, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_NSPECIAL, box, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, box, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_NSPECIAL, box, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));

box = 3; //Bottom
set_hitbox_value(AT_NSPECIAL, box, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, box, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, box, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, box, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, box, HG_HITBOX_X, -5);
set_hitbox_value(AT_NSPECIAL, box, HG_HITBOX_Y, -13);
set_hitbox_value(AT_NSPECIAL, box, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL, box, HG_HEIGHT, 36);
set_hitbox_value(AT_NSPECIAL, box, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL, box, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, box, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_NSPECIAL, box, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, box, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, box, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, box, HG_KNOCKBACK_SCALING, 0.93);
set_hitbox_value(AT_NSPECIAL, box, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_NSPECIAL, box, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, box, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_NSPECIAL, box, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));

//Backswing
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, -43);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -128);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 62);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 361); //45 vs air opponents, 40 vs grounded
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 5); //Horizontal knockback is reversed
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));

// Unused?
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, -15);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 151);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 64);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_GROUP, 3);
//set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));

//Spinning Chair
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_SHAPE, 0);
//set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 9001);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 65);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 65);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 0.8); // originally 1.1
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("chair_invisible"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, sprite_get("chair_hitbox"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
