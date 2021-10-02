var at = AT_DTILT

set_attack_value(at, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(at, AG_NUM_WINDOWS, 4);
set_attack_value(at, AG_HAS_LANDING_LAG, 3);
set_attack_value(at, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

var ig = 1;

//Down Tilt Start
set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 6);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(at, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, ig, AG_WINDOW_SFX, sound_get("slam1"));

ig++;

//Down Tilt Air Hit 1
set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 6);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 1);

ig++;

//Down Tilt Air Hit 2
set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 4);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 3);

ig++;

//Down Tilt Air End
set_window_value(at, ig, AG_WINDOW_TYPE, 1);
set_window_value(at, ig, AG_WINDOW_LENGTH, 8);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, ig, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(at, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(at, 2);
var ig = 1;

set_hitbox_value(at, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, ig, HG_WINDOW, 2);
set_hitbox_value(at, ig, HG_LIFETIME, 3); // changed lifetime to match length of active window
set_hitbox_value(at, ig, HG_HITBOX_X, 39);
set_hitbox_value(at, ig, HG_HITBOX_Y, -14);
set_hitbox_value(at, ig, HG_WIDTH, 41);
set_hitbox_value(at, ig, HG_HEIGHT, 32);
set_hitbox_value(at, ig, HG_SHAPE, 2); // changed hitbox index from 2 to 1 (dummy)
set_hitbox_value(at, ig, HG_PRIORITY, 2);
set_hitbox_value(at, ig, HG_DAMAGE, 4);
set_hitbox_value(at, ig, HG_ANGLE, 100); // changed angle to 100 from 85 to bring enemies in
set_hitbox_value(at, ig, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(at, ig, HG_KNOCKBACK_SCALING, .3); // reduced kb scaling by .1
set_hitbox_value(at, ig, HG_BASE_HITPAUSE, 4); // raised base hitpause to 4 from 3
set_hitbox_value(at, ig, HG_HITPAUSE_SCALING, .3); // added hitpause scaling
set_hitbox_value(at, ig, HG_EXTRA_HITPAUSE, 2); // added extra hitpause to allow frame advantage on hit
set_hitbox_value(at, ig, HG_VISUAL_EFFECT, 13);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(at, ig, HG_HIT_SFX, sound_get("slam2"));
set_hitbox_value(at, ig, HG_ANGLE_FLIPPER, 0);

ig++;

set_hitbox_value(at, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(at, ig, HG_WINDOW, 3);
set_hitbox_value(at, ig, HG_LIFETIME, 3); // changed lifetime to match length of active window
set_hitbox_value(at, ig, HG_HITBOX_X, -24);
set_hitbox_value(at, ig, HG_HITBOX_Y, -6);
set_hitbox_value(at, ig, HG_WIDTH, 63);
set_hitbox_value(at, ig, HG_HEIGHT, 27);
set_hitbox_value(at, ig, HG_SHAPE, 2); // changed hitbox index from 2 to 1 (dummy)
set_hitbox_value(at, ig, HG_PRIORITY, 2);
set_hitbox_value(at, ig, HG_DAMAGE, 4);
set_hitbox_value(at, ig, HG_ANGLE, 100); // changed angle to 100 from 85 to bring enemies in
set_hitbox_value(at, ig, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(at, ig, HG_KNOCKBACK_SCALING, .3); // reduced kb scaling by .1
set_hitbox_value(at, ig, HG_BASE_HITPAUSE, 4); // raised base hitpause to 4 from 3
set_hitbox_value(at, ig, HG_HITPAUSE_SCALING, .3); // added hitpause scaling
set_hitbox_value(at, ig, HG_EXTRA_HITPAUSE, 2); // added extra hitpause to allow frame advantage on hit
set_hitbox_value(at, ig, HG_VISUAL_EFFECT, 13);
set_hitbox_value(at, ig, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(at, ig, HG_HIT_SFX, sound_get("slam2"));
set_hitbox_value(at, ig, HG_ANGLE_FLIPPER, 0);