set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
//set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

// Anim Frames 0-2
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sfx_teleporter);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);



// Invisible
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

// Explode
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, sfx_littlecrash);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 3);

// Post-Explode
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);



// Slashing
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, sfx_throw);
//set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);

//Post-Slashing
set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 19);
//set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
//set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED, 10);
//set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 2);



set_num_hitboxes(AT_USPECIAL, 10);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -3);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
//set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -3);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sfx_hitsound);
set_hitbox_value(AT_USPECIAL, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, -3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, -3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, -3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, -3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_USPECIAL, 7, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, -3);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_USPECIAL, 8, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, -3);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, 7);

set_hitbox_value(AT_USPECIAL, 9, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_USPECIAL, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_X, -3);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_GROUP, 8);

set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 10, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USPECIAL, 10, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_USPECIAL, 10, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_X, -3);
set_hitbox_value(AT_USPECIAL, 10, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 10, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 10, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 10, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_USPECIAL, 10, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 10, HG_ANGLE, 361);
set_hitbox_value(AT_USPECIAL, 10, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 10, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 10, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL, 10, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 10, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL, 10, HG_VISUAL_EFFECT, large_hit);
set_hitbox_value(AT_USPECIAL, 10, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_GROUP, 9);
