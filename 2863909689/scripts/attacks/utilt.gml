set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

//startup
set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 5);

//multihit
set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//startup 2
set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX_FRAME, 4);

//final hit
set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 8);

//endlag
set_window_value(AT_UTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 5);

//endlag 2
set_window_value(AT_UTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_UTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_UTILT, 4);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 41);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 94);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 3);

set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -55);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 41);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 94);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 2, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 2, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_UTILT, 2, HG_TECHABLE, 3);

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -55);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 54);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 94);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -1);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 80);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 6);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 4, HG_SHAPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 4, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 4, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_UTILT, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_UTILT, 4, HG_GROUNDEDNESS, 1);