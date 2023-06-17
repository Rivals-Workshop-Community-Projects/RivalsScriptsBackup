set_attack_value(AT_GRAB, AG_CATEGORY, 2);
set_attack_value(AT_GRAB, AG_SPRITE, sprite_get("grab"));
set_attack_value(AT_GRAB, AG_AIR_SPRITE, sprite_get("grab_air"));
set_attack_value(AT_GRAB, AG_HURTBOX_SPRITE, sprite_get("grab_hurt"));
set_attack_value(AT_GRAB, AG_NUM_WINDOWS, 3);

set_window_value(AT_GRAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_GRAB, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_GRAB, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_GRAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_GRAB, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_GRAB, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_GRAB, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_GRAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_GRAB, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_GRAB, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_GRAB, 3, AG_WINDOW_ANIM_FRAME_START, 7);

//grabbed
set_window_value(AT_GRAB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_GRAB, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_GRAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_GRAB, 4, AG_WINDOW_ANIM_FRAME_START, 13);

//fthrow / bthrow
set_window_value(AT_GRAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_GRAB, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_GRAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_GRAB, 5, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_GRAB, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_GRAB, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_GRAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_GRAB, 6, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(AT_GRAB, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_GRAB, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_GRAB, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_GRAB, 7, AG_WINDOW_ANIM_FRAME_START, 20);

//uthrow
set_window_value(AT_GRAB, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_GRAB, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_GRAB, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_GRAB, 8, AG_WINDOW_ANIM_FRAME_START, 34);

set_window_value(AT_GRAB, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_GRAB, 9, AG_WINDOW_LENGTH, 9);
set_window_value(AT_GRAB, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_GRAB, 9, AG_WINDOW_ANIM_FRAME_START, 36);

set_window_value(AT_GRAB, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_GRAB, 10, AG_WINDOW_LENGTH, 16);
set_window_value(AT_GRAB, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_GRAB, 10, AG_WINDOW_ANIM_FRAME_START, 39);

//dthrow
set_window_value(AT_GRAB, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_GRAB, 11, AG_WINDOW_LENGTH, 9);
set_window_value(AT_GRAB, 11, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_GRAB, 11, AG_WINDOW_ANIM_FRAME_START, 24);

set_window_value(AT_GRAB, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_GRAB, 12, AG_WINDOW_LENGTH, 9);
set_window_value(AT_GRAB, 12, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_GRAB, 12, AG_WINDOW_ANIM_FRAME_START, 27);

set_window_value(AT_GRAB, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_GRAB, 13, AG_WINDOW_LENGTH, 16);
set_window_value(AT_GRAB, 13, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_GRAB, 13, AG_WINDOW_ANIM_FRAME_START, 30);

set_num_hitboxes(AT_GRAB, 4);

//grab hitbox
set_hitbox_value(AT_GRAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_GRAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_GRAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_GRAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_GRAB, 1, HG_HITBOX_X, 65);
set_hitbox_value(AT_GRAB, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_GRAB, 1, HG_WIDTH, 60);
set_hitbox_value(AT_GRAB, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_GRAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_GRAB, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_GRAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_GRAB, 1, HG_ANGLE, 55);
set_hitbox_value(AT_GRAB, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_GRAB, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_GRAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_GRAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_GRAB, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_GRAB, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_GRAB, 1, HG_THROWS_ROCK, 1);

//fthrow / bthrow (grounded)
set_hitbox_value(AT_GRAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_GRAB, 2, HG_WINDOW, 60);
set_hitbox_value(AT_GRAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_GRAB, 2, HG_HITBOX_X, 65);
set_hitbox_value(AT_GRAB, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_GRAB, 2, HG_WIDTH, 70);
set_hitbox_value(AT_GRAB, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_GRAB, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_GRAB, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_GRAB, 2, HG_ANGLE, 40);
set_hitbox_value(AT_GRAB, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_GRAB, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_GRAB, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_GRAB, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_GRAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_GRAB, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_GRAB, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_GRAB, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_GRAB, 2, HG_THROWS_ROCK, 1);

//fthrow / bthrow (aerial)
set_hitbox_value(AT_GRAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_GRAB, 3, HG_WINDOW, 60);
set_hitbox_value(AT_GRAB, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_GRAB, 3, HG_HITBOX_X, 65);
set_hitbox_value(AT_GRAB, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_GRAB, 3, HG_WIDTH, 70);
set_hitbox_value(AT_GRAB, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_GRAB, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_GRAB, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_GRAB, 3, HG_ANGLE, 50);
set_hitbox_value(AT_GRAB, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_GRAB, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_GRAB, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_GRAB, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_GRAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_GRAB, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_GRAB, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_GRAB, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_GRAB, 3, HG_THROWS_ROCK, 1);

//uthrow (grounded)
set_hitbox_value(AT_GRAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_GRAB, 4, HG_WINDOW, 60);
set_hitbox_value(AT_GRAB, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_GRAB, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_GRAB, 4, HG_HITBOX_Y, -65);
set_hitbox_value(AT_GRAB, 4, HG_WIDTH, 80);
set_hitbox_value(AT_GRAB, 4, HG_HEIGHT, 110);
set_hitbox_value(AT_GRAB, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_GRAB, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_GRAB, 4, HG_ANGLE, 90);
set_hitbox_value(AT_GRAB, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_GRAB, 4, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_GRAB, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_GRAB, 4, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_GRAB, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_GRAB, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_GRAB, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_GRAB, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_GRAB, 4, HG_THROWS_ROCK, 1);

//uthrow (aerial)
set_hitbox_value(AT_GRAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_GRAB, 5, HG_WINDOW, 60);
set_hitbox_value(AT_GRAB, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_GRAB, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_GRAB, 5, HG_HITBOX_Y, -65);
set_hitbox_value(AT_GRAB, 5, HG_WIDTH, 80);
set_hitbox_value(AT_GRAB, 5, HG_HEIGHT, 110);
set_hitbox_value(AT_GRAB, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_GRAB, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_GRAB, 5, HG_ANGLE, 90);
set_hitbox_value(AT_GRAB, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_GRAB, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_GRAB, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_GRAB, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_GRAB, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_GRAB, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_GRAB, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_GRAB, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_GRAB, 5, HG_THROWS_ROCK, 1);

//dthrow (grounded)
set_hitbox_value(AT_GRAB, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_GRAB, 6, HG_WINDOW, 60);
set_hitbox_value(AT_GRAB, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_GRAB, 6, HG_HITBOX_X, 15);
set_hitbox_value(AT_GRAB, 6, HG_HITBOX_Y, -10);
set_hitbox_value(AT_GRAB, 6, HG_WIDTH, 70);
set_hitbox_value(AT_GRAB, 6, HG_HEIGHT, 100);
set_hitbox_value(AT_GRAB, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_GRAB, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_GRAB, 6, HG_ANGLE, 70);
set_hitbox_value(AT_GRAB, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_GRAB, 6, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_GRAB, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_GRAB, 6, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_GRAB, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_GRAB, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_GRAB, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_GRAB, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_GRAB, 6, HG_THROWS_ROCK, 1);

//dthrow (aerial)
set_hitbox_value(AT_GRAB, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_GRAB, 7, HG_WINDOW, 60);
set_hitbox_value(AT_GRAB, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_GRAB, 7, HG_HITBOX_X, 15);
set_hitbox_value(AT_GRAB, 7, HG_HITBOX_Y, -10);
set_hitbox_value(AT_GRAB, 7, HG_WIDTH, 70);
set_hitbox_value(AT_GRAB, 7, HG_HEIGHT, 100);
set_hitbox_value(AT_GRAB, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_GRAB, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_GRAB, 7, HG_ANGLE, 270);
set_hitbox_value(AT_GRAB, 7, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_GRAB, 7, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_GRAB, 7, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_GRAB, 7, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_GRAB, 7, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_GRAB, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_GRAB, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_GRAB, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_GRAB, 5, HG_THROWS_ROCK, 1);