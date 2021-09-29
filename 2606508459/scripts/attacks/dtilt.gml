set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_CATEGORY, 0);
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 4);

var ig = 1;

//Down Tilt Start
set_window_value(AT_DTILT, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, ig, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, ig, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, ig, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

ig++;

//Down Tilt Air Hit 1
set_window_value(AT_DTILT, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, ig, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, ig, AG_WINDOW_ANIM_FRAME_START, 3);

ig++;

//Down Tilt Air Hit 2
set_window_value(AT_DTILT, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, ig, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, ig, AG_WINDOW_ANIM_FRAME_START, 5);

ig++;

//Down Tilt Air End
set_window_value(AT_DTILT, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, ig, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, ig, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 2);
ig = 1;

set_hitbox_value(AT_DTILT, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, ig, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, ig, HG_LIFETIME, 3); // changed lifetime to match length of active window
set_hitbox_value(AT_DTILT, ig, HG_HITBOX_X, 49);
set_hitbox_value(AT_DTILT, ig, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DTILT, ig, HG_WIDTH, 71);
set_hitbox_value(AT_DTILT, ig, HG_HEIGHT, 32);
set_hitbox_value(AT_DTILT, ig, HG_SHAPE, 2); // changed hitbox index from 2 to 1 (dummy)
set_hitbox_value(AT_DTILT, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, ig, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, ig, HG_ANGLE, 100); // changed angle to 100 from 85 to bring enemies in
set_hitbox_value(AT_DTILT, ig, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, ig, HG_KNOCKBACK_SCALING, .3); // reduced kb scaling by .1
set_hitbox_value(AT_DTILT, ig, HG_BASE_HITPAUSE, 4); // raised base hitpause to 4 from 3
set_hitbox_value(AT_DTILT, ig, HG_HITPAUSE_SCALING, .3); // added hitpause scaling
set_hitbox_value(AT_DTILT, ig, HG_EXTRA_HITPAUSE, 2); // added extra hitpause to allow frame advantage on hit
set_hitbox_value(AT_DTILT, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DTILT, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DTILT, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, ig, HG_ANGLE_FLIPPER, 0);

ig++;

set_hitbox_value(AT_DTILT, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, ig, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, ig, HG_LIFETIME, 3); // changed lifetime to match length of active window
set_hitbox_value(AT_DTILT, ig, HG_HITBOX_X, -24);
set_hitbox_value(AT_DTILT, ig, HG_HITBOX_Y, -6);
set_hitbox_value(AT_DTILT, ig, HG_WIDTH, 63);
set_hitbox_value(AT_DTILT, ig, HG_HEIGHT, 27);
set_hitbox_value(AT_DTILT, ig, HG_SHAPE, 2); // changed hitbox index from 2 to 1 (dummy)
set_hitbox_value(AT_DTILT, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, ig, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, ig, HG_ANGLE, 100); // changed angle to 100 from 85 to bring enemies in
set_hitbox_value(AT_DTILT, ig, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, ig, HG_KNOCKBACK_SCALING, .3); // reduced kb scaling by .1
set_hitbox_value(AT_DTILT, ig, HG_BASE_HITPAUSE, 4); // raised base hitpause to 4 from 3
set_hitbox_value(AT_DTILT, ig, HG_HITPAUSE_SCALING, .3); // added hitpause scaling
set_hitbox_value(AT_DTILT, ig, HG_EXTRA_HITPAUSE, 2); // added extra hitpause to allow frame advantage on hit
set_hitbox_value(AT_DTILT, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_DTILT, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DTILT, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, ig, HG_ANGLE_FLIPPER, 0);

//END