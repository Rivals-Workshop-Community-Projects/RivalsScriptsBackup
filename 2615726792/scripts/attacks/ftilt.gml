var at = AT_FTILT

set_attack_value(at, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(at, AG_NUM_WINDOWS, 3);
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

var ig = 1;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 12);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 1);

ig++;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 15);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(at, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, ig, AG_WINDOW_SFX, sound_get("punch"));

ig++;

set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 4);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(at, ig, AG_WINDOW_HAS_WHIFFLAG, 7);

set_num_hitboxes(at, 2);
ig = 1;

//Sweetspot
set_hitbox_value(at, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(at, ig, HG_WINDOW, 2);
set_hitbox_value(at, ig, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(at, ig, HG_LIFETIME, 3);
set_hitbox_value(at, ig, HG_HITBOX_X, 15);
set_hitbox_value(at, ig, HG_HITBOX_Y, -23);
set_hitbox_value(at, ig, HG_WIDTH, 31);
set_hitbox_value(at, ig, HG_HEIGHT, 29);
set_hitbox_value(at, ig, HG_SHAPE, 2);
set_hitbox_value(at, ig, HG_PRIORITY, 2);
set_hitbox_value(at, ig, HG_DAMAGE, 13);
set_hitbox_value(at, ig, HG_ANGLE, 40);
set_hitbox_value(at, ig, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(at, ig, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(at, ig, HG_BASE_HITPAUSE, 10);
set_hitbox_value(at, ig, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(at, ig, HG_HIT_LOCKOUT, 14);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT, 304);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(at, ig, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(at, ig, HG_HIT_SFX, sound_get("bigpunch"));
set_hitbox_value(at, ig, HG_EXTRA_CAMERA_SHAKE, 2);

ig++;

//Punch
set_hitbox_value(at, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(at, ig, HG_WINDOW, 2);
set_hitbox_value(at, ig, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(at, ig, HG_LIFETIME, 9);
set_hitbox_value(at, ig, HG_HITBOX_X, 29);
set_hitbox_value(at, ig, HG_HITBOX_Y, -25);
set_hitbox_value(at, ig, HG_WIDTH, 60);
set_hitbox_value(at, ig, HG_HEIGHT, 60);
set_hitbox_value(at, ig, HG_SHAPE, 2);
set_hitbox_value(at, ig, HG_PRIORITY, 2);
set_hitbox_value(at, ig, HG_DAMAGE, 10);
set_hitbox_value(at, ig, HG_ANGLE, 40);
set_hitbox_value(at, ig, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(at, ig, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(at, ig, HG_BASE_HITPAUSE, 8);
set_hitbox_value(at, ig, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(at, ig, HG_HIT_LOCKOUT, 20);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT, 305);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(at, ig, HG_HIT_SFX, sound_get("tinyslam"));
set_hitbox_value(at, ig, HG_ANGLE_FLIPPER, 0);
