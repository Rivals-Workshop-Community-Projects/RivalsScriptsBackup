set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 10);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

//startup
set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("gunslinger_start"));
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, sound_get("gunslinger_saw"));
set_window_value(AT_FAIR, 3, AG_WINDOW_HSPEED, 1.5);
set_window_value(AT_FAIR, 3, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_HSPEED, 0.5);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 5, AG_WINDOW_HSPEED, 0.5);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FAIR, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 9, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_FAIR, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 10, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FAIR, 10, AG_WINDOW_HAS_WHIFFLAG, 5);


set_num_hitboxes(AT_FAIR, 5);

//innitial swing hitbox
set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FAIR, 1, HG_THROWS_ROCK, 1);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_buzzsaw_hit"));

//multihit
set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 76);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -58);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FAIR, 2, HG_THROWS_ROCK, 1);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_buzzsaw_hit"));

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 76);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -58);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 64);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, -1);

//finisher
set_hitbox_value(AT_FAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 10);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 76);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -58);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 68);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 68);//68 for both
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));