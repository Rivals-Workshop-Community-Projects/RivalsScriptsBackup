set_attack_value(AT_DTILT, AG_CATEGORY, 2);
set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DTILT, AG_LANDING_LAG, 6);

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("slide"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_GOTO, 10);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.2);

//Slide Jump Start
set_window_value(AT_DTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//Slide Jump
set_window_value(AT_DTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DTILT, 6, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DTILT, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_VSPEED, -7);
set_window_value(AT_DTILT, 6, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DTILT, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);

set_window_value(AT_DTILT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 8, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 8, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DTILT, 8, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DTILT, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);


set_num_hitboxes(AT_DTILT, 3);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 65);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 1, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 6);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, -5);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 75);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 40);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 7);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 15);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 40);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 1);
// set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 3);
// set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
// set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 6);
// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 15);
// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -15);
// set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 69);
// set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 30);
// set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 2);
// set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
// set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 4);
// set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 70);
// set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 4);
// set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .4);
// set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 6);
// set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .3);
// set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
