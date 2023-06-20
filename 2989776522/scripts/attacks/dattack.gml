set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack_ground"));
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
set_attack_value(AT_DATTACK, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DATTACK, AG_LANDING_LAG, 4);

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, -6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 14);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

//jump
set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 5);

//falling
set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//hit ground
set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 9);

//get out of ground
set_window_value(AT_DATTACK, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 10);

//sweetspot
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -65);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 100);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//middle hit
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 100);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//middle hit 2
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 3);
//set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 45);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -55);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 100);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//sourspot (aerial)
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 9);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 45);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 100);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_DATTACK, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DATTACK, 4, HG_GROUNDEDNESS, 2);

//spike
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 100);
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_DATTACK, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 300);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, 2);

//spike 2
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW, 40);
set_hitbox_value(AT_DATTACK, 6, HG_LIFETIME, 10);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_X, 30);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 6, HG_WIDTH, 100);
set_hitbox_value(AT_DATTACK, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_DATTACK, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_DATTACK, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 6, HG_ANGLE, 300);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DATTACK, 6, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 6, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_GROUP, 2);

//extra hit when landing
set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 7, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_X, 35);
set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DATTACK, 7, HG_WIDTH, 110);
set_hitbox_value(AT_DATTACK, 7, HG_HEIGHT, 90);
set_hitbox_value(AT_DATTACK, 7, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 7, HG_PRIORITY, 6);
set_hitbox_value(AT_DATTACK, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 7, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 7, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DATTACK, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 7, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DATTACK, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DATTACK, 7, HG_HITBOX_GROUP, 3);

//shockwave when landing
set_hitbox_value(AT_DATTACK, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 8, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 8, HG_HITBOX_X, 45);
set_hitbox_value(AT_DATTACK, 8, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DATTACK, 8, HG_WIDTH, 180);
set_hitbox_value(AT_DATTACK, 8, HG_HEIGHT, 15);
set_hitbox_value(AT_DATTACK, 8, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 8, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 8, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DATTACK, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 8, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DATTACK, 8, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DATTACK, 8, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DATTACK, 8, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DATTACK, 8, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DATTACK, 8, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DATTACK, 8, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_DATTACK, 8, HG_HITBOX_GROUP, 3);

//sourspot (grounded)
set_hitbox_value(AT_DATTACK, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 9, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 9, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DATTACK, 9, HG_LIFETIME, 9);
set_hitbox_value(AT_DATTACK, 9, HG_HITBOX_X, 45);
set_hitbox_value(AT_DATTACK, 9, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DATTACK, 9, HG_WIDTH, 100);
set_hitbox_value(AT_DATTACK, 9, HG_HEIGHT, 70);
set_hitbox_value(AT_DATTACK, 9, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 9, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 9, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 9, HG_ANGLE, 300);
set_hitbox_value(AT_DATTACK, 9, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 9, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 9, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 9, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DATTACK, 9, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DATTACK, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DATTACK, 9, HG_GROUNDEDNESS, 1);

//shield hitbox
set_hitbox_value(AT_DATTACK, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 10, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 10, HG_LIFETIME, 999);
set_hitbox_value(AT_DATTACK, 10, HG_HITBOX_X, 45);
set_hitbox_value(AT_DATTACK, 10, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DATTACK, 10, HG_WIDTH, 110);
set_hitbox_value(AT_DATTACK, 10, HG_HEIGHT, 120);
set_hitbox_value(AT_DATTACK, 10, HG_PRIORITY, 0);
set_hitbox_value(AT_DATTACK, 10, HG_DAMAGE, 0);
set_hitbox_value(AT_DATTACK, 10, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DATTACK, 10, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DATTACK, 10, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DATTACK, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 10, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DATTACK, 10, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DATTACK, 10, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DATTACK, 10, HG_PROJECTILE_DESTROY_EFFECT, 1);