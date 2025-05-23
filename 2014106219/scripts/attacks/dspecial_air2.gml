set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DTHROW, AG_LANDING_LAG, 10);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, sound_get("sword-brandish"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX, sound_get("magicshoot3"));
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTHROW, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DTHROW, 3, AG_WINDOW_HSPEED, 11);
set_window_value(AT_DTHROW, 3, AG_WINDOW_VSPEED, 32);
set_window_value(AT_DTHROW, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DTHROW, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);

set_window_value(AT_DTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTHROW, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTHROW, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);

set_window_value(AT_DTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 8);

//landing

set_window_value(AT_DTHROW, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DTHROW, 6, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DTHROW, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTHROW, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 7, AG_WINDOW_ANIM_FRAME_START, 15);

set_num_hitboxes(AT_DTHROW, 10);

//clean
set_hitbox_value(AT_DTHROW, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, 32);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 36);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTHROW, 1, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTHROW, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, sound_get("sword-hit1"));

set_hitbox_value(AT_DTHROW, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DTHROW, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_X, 8);
set_hitbox_value(AT_DTHROW, 3, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DTHROW, 3, HG_WIDTH, 40);
set_hitbox_value(AT_DTHROW, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DTHROW, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DTHROW, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DTHROW, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DTHROW, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTHROW, 3, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTHROW, 3, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_DTHROW, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTHROW, 3, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_DTHROW, 3, HG_HIT_SFX, sound_get("sword-hit1"));

//land
set_hitbox_value(AT_DTHROW, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DTHROW, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 5, HG_WINDOW, 6);
set_hitbox_value(AT_DTHROW, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 5, HG_HITBOX_X, 6);
set_hitbox_value(AT_DTHROW, 5, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DTHROW, 5, HG_WIDTH, 110);
set_hitbox_value(AT_DTHROW, 5, HG_HEIGHT, 48);
set_hitbox_value(AT_DTHROW, 5, HG_PRIORITY, 10);
set_hitbox_value(AT_DTHROW, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_DTHROW, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DTHROW, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTHROW, 5, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DTHROW, 5, HG_ANGLE, 50);
set_hitbox_value(AT_DTHROW, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DTHROW, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTHROW, 5, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_DTHROW, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTHROW, 5, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_DTHROW, 5, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTHROW, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_DTHROW, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DTHROW, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 6, HG_WINDOW, 6);
set_hitbox_value(AT_DTHROW, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DTHROW, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 6, HG_HITBOX_X, 38);
set_hitbox_value(AT_DTHROW, 6, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTHROW, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DTHROW, 6, HG_WIDTH, 60);
set_hitbox_value(AT_DTHROW, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_DTHROW, 6, HG_PRIORITY, 8);
set_hitbox_value(AT_DTHROW, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_DTHROW, 6, HG_ANGLE, 8);
set_hitbox_value(AT_DTHROW, 6, HG_TECHABLE, 1);
set_hitbox_value(AT_DTHROW, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTHROW, 6, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DTHROW, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTHROW, 6, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(AT_DTHROW, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DTHROW, 7, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_DTHROW, 7, HG_WINDOW, 6);
set_hitbox_value(AT_DTHROW, 7, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DTHROW, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 7, HG_HITBOX_X, 88);
set_hitbox_value(AT_DTHROW, 7, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTHROW, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DTHROW, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DTHROW, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 8, HG_WINDOW, 6);
set_hitbox_value(AT_DTHROW, 8, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DTHROW, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 8, HG_HITBOX_X, 138);
set_hitbox_value(AT_DTHROW, 8, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTHROW, 8, HG_SHAPE, 0);
set_hitbox_value(AT_DTHROW, 8, HG_WIDTH, 80);
set_hitbox_value(AT_DTHROW, 8, HG_HEIGHT, 80);
set_hitbox_value(AT_DTHROW, 8, HG_PRIORITY, 8);
set_hitbox_value(AT_DTHROW, 8, HG_DAMAGE, 6);
set_hitbox_value(AT_DTHROW, 8, HG_ANGLE, 90);
set_hitbox_value(AT_DTHROW, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTHROW, 8, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_DTHROW, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTHROW, 8, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DTHROW, 8, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(AT_DTHROW, 8, HG_HITBOX_GROUP, -1);


//BURST hitbox
set_hitbox_value(AT_DTHROW, 9, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DTHROW, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTHROW, 9, HG_WINDOW, 3);
set_hitbox_value(AT_DTHROW, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 9, HG_HITBOX_X, -26);
set_hitbox_value(AT_DTHROW, 9, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DTHROW, 9, HG_WIDTH, 50);
set_hitbox_value(AT_DTHROW, 9, HG_HEIGHT, 50);
set_hitbox_value(AT_DTHROW, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_DTHROW, 9, HG_DAMAGE, 10);
set_hitbox_value(AT_DTHROW, 9, HG_SHAPE, 0);
set_hitbox_value(AT_DTHROW, 9, HG_ANGLE, 45);
set_hitbox_value(AT_DTHROW, 9, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_DTHROW, 9, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTHROW, 9, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_DTHROW, 9, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTHROW, 9, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DTHROW, 9, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_DTHROW, 9, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DTHROW, 9, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DTHROW, 9, HG_EXTRA_HITPAUSE, 25);
set_hitbox_value(AT_DTHROW, 9, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DTHROW, 9, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DTHROW, 9, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_DTHROW, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 9, HG_PROJECTILE_SPRITE, sprite_get("eggburst"));
set_hitbox_value(AT_DTHROW, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTHROW, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DTHROW, 9, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DTHROW, 9, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DTHROW, 9, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DTHROW, 9, HG_PROJECTILE_DOES_NOT_REFLECT, false);
