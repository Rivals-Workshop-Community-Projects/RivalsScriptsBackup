set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("uair2"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("uair2_hurt"));
set_attack_value(AT_EXTRA_2, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_2, AG_LANDING_LAG, 5);

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_VSPEED, -2);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_2, 5);


set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 7);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -49);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 88);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 49);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//HITBOX 2
set_hitbox_value(AT_EXTRA_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_X, -32);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_2, 2, HG_WIDTH, 22);
set_hitbox_value(AT_EXTRA_2, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_2, 2, HG_ANGLE, 110);
set_hitbox_value(AT_EXTRA_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_EXTRA_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
//HITBOX 3
set_hitbox_value(AT_EXTRA_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_X, 7);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_Y, -72);
set_hitbox_value(AT_EXTRA_2, 3, HG_WIDTH, 15);
set_hitbox_value(AT_EXTRA_2, 3, HG_HEIGHT, 13);
set_hitbox_value(AT_EXTRA_2, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_2, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_EXTRA_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_2, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_2, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_2, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_2, 3, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_EXTRA_2, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_EXTRA_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 3, HG_LIFETIME, 2);
//HITBOX 4
set_hitbox_value(AT_EXTRA_2, 4, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_2, 4, HG_HITBOX_X, 9);
set_hitbox_value(AT_EXTRA_2, 4, HG_HITBOX_Y, -55);
set_hitbox_value(AT_EXTRA_2, 4, HG_WIDTH, 86);
set_hitbox_value(AT_EXTRA_2, 4, HG_HEIGHT, 46);
set_hitbox_value(AT_EXTRA_2, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_2, 4, HG_ANGLE, 95);
set_hitbox_value(AT_EXTRA_2, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_2, 4, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_2, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_2, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_EXTRA_2, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_2, 4, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_EXTRA_2, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_EXTRA_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_EXTRA_2, 4, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_EXTRA_2, 4, HG_HITBOX_GROUP, 2);

// set_hitbox_value(AT_EXTRA_2, 5, HG_SHAPE, 0);
// set_hitbox_value(AT_EXTRA_2, 5, HG_HITBOX_X, -24);
// set_hitbox_value(AT_EXTRA_2, 5, HG_HITBOX_Y, -44);
// set_hitbox_value(AT_EXTRA_2, 5, HG_WIDTH, 20);
// set_hitbox_value(AT_EXTRA_2, 5, HG_HEIGHT, 20);
// set_hitbox_value(AT_EXTRA_2, 5, HG_DAMAGE, 4);
// set_hitbox_value(AT_EXTRA_2, 5, HG_ANGLE, 255);
// set_hitbox_value(AT_EXTRA_2, 5, HG_PRIORITY, 2);
// set_hitbox_value(AT_EXTRA_2, 5, HG_SHAPE, 0);
// set_hitbox_value(AT_EXTRA_2, 5, HG_BASE_KNOCKBACK, 7);
// set_hitbox_value(AT_EXTRA_2, 5, HG_KNOCKBACK_SCALING, .6);
// set_hitbox_value(AT_EXTRA_2, 5, HG_BASE_HITPAUSE, 6);
// set_hitbox_value(AT_EXTRA_2, 5, HG_HITPAUSE_SCALING, .65);
// set_hitbox_value(AT_EXTRA_2, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
// set_hitbox_value(AT_EXTRA_2, 5, HG_WINDOW, 2);
// set_hitbox_value(AT_EXTRA_2, 5, HG_GROUNDEDNESS, 2);
// set_hitbox_value(AT_EXTRA_2, 5, HG_LIFETIME, 3);
// set_hitbox_value(AT_EXTRA_2, 5, HG_WINDOW_CREATION_FRAME, 9);
// set_hitbox_value(AT_EXTRA_2, 5, HG_HITBOX_GROUP, 2);