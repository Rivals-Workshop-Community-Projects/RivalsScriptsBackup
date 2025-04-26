set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 10);

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 8);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -155);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_UAIR, 1, HG_TECHABLE, 2);

set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -155);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 2, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 55);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -155);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 3, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 55);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -155);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 4, HG_HIT_LOCKOUT, 2);

//scoop
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 60);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 65);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 100);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 1);

//finisher
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, 55);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -155);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 60);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 85);
set_hitbox_value(AT_UAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 6);
set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UAIR, 6, HG_HIT_LOCKOUT, 5);

//bullet
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW, 40);
set_hitbox_value(AT_UAIR, 7, HG_LIFETIME, 30);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_X, 40);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UAIR, 7, HG_WIDTH, 20);
set_hitbox_value(AT_UAIR, 7, HG_HEIGHT, 20);
set_hitbox_value(AT_UAIR, 7, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 7, HG_ANGLE, 45);
//set_hitbox_value(AT_UAIR, 7, HG_BASE_KNOCKBACK, 5);
//set_hitbox_value(AT_UAIR, 7, HG_KNOCKBACK_SCALING, .4);
//set_hitbox_value(AT_UAIR, 7, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_UAIR, 7, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UAIR, 7, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_SPRITE, sprite_get("eggflapper_shot"));
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_UAIR, 7, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_UAIR, 7, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_UAIR, 7, HG_IGNORES_PROJECTILES, true);