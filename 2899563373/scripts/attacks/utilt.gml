set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 7);
//multihits
set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
//final
set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
//endlag
set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 8);

//ground-only scoop
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, -3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 65);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
//set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 3);
//set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_GROUNDEDNESS, 1);

//staff multihits
set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -73);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 85);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -77);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_UTILT, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, -3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -81);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_UTILT, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, -3);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -85);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_UTILT, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, -3);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -89);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_GROUP, -1);

//final hit
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_X, -3);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_Y, -92);
set_hitbox_value(AT_UTILT, 7, HG_WIDTH, 96);
set_hitbox_value(AT_UTILT, 7, HG_HEIGHT, 46);
set_hitbox_value(AT_UTILT, 7, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 7, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 7, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 7, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_UTILT, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 7, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UTILT, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 7, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_UTILT, 7, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UTILT, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_GROUP, 3);

//late scoop
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 8, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 8, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 8, HG_LIFETIME, 16);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_X, -3);
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UTILT, 8, HG_WIDTH, 75);
set_hitbox_value(AT_UTILT, 8, HG_HEIGHT, 25);
set_hitbox_value(AT_UTILT, 8, HG_SHAPE, 1);
set_hitbox_value(AT_UTILT, 8, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_UTILT, 8, HG_ANGLE, 65);
set_hitbox_value(AT_UTILT, 8, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_UTILT, 8, HG_BASE_KNOCKBACK, 9);
//set_hitbox_value(AT_UTILT, 8, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_UTILT, 8, HG_BASE_HITPAUSE, 3);
//set_hitbox_value(AT_UTILT, 8, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 8, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 8, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 8, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_UTILT, 8, HG_HIT_LOCKOUT, 2);