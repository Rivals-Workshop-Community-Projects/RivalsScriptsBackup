set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
set_attack_value(AT_UTILT, AG_CATEGORY, 0);
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);

var ig = 1;

//Up Tilt Start
set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2")); 
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 7); 

//Up Tilt Air Hit 1
set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//Up Tilt Air Hit 2
set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//Up Tilt Air End
set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 3);
ig = 1;

set_hitbox_value(AT_UTILT, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, ig, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, ig, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, ig, HG_HITBOX_X, -11);
set_hitbox_value(AT_UTILT, ig, HG_HITBOX_Y, -31);
set_hitbox_value(AT_UTILT, ig, HG_WIDTH, 47);
set_hitbox_value(AT_UTILT, ig, HG_HEIGHT, 47);
set_hitbox_value(AT_UTILT, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, ig, HG_DAMAGE, 4); 
set_hitbox_value(AT_UTILT, ig, HG_ANGLE, 45); // changed angle to send in to large hb more reliably
set_hitbox_value(AT_UTILT, ig, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UTILT, ig, HG_KNOCKBACK_SCALING, 0); // removed kb scaling 
set_hitbox_value(AT_UTILT, ig, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, ig, HG_HITPAUSE_SCALING, .3); // added hp scaling
set_hitbox_value(AT_UTILT, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_UTILT, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_UTILT, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, ig, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTILT, ig, HG_HITBOX_GROUP, 1); // added hitbox groups

ig++;

set_hitbox_value(AT_UTILT, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, ig, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, ig, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, ig, HG_HITBOX_X, -2);
set_hitbox_value(AT_UTILT, ig, HG_HITBOX_Y, -65);
set_hitbox_value(AT_UTILT, ig, HG_WIDTH, 68);
set_hitbox_value(AT_UTILT, ig, HG_HEIGHT, 100);
set_hitbox_value(AT_UTILT, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, ig, HG_DAMAGE, 5); // raised damage to better reward most likely to land strike
set_hitbox_value(AT_UTILT, ig, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, ig, HG_BASE_KNOCKBACK, 7); // raised kb to 5 from 3/4 (can't remember LOL)
set_hitbox_value(AT_UTILT, ig, HG_KNOCKBACK_SCALING, .3); // raised kb scaling to .4 from .3
set_hitbox_value(AT_UTILT, ig, HG_BASE_HITPAUSE, 5); // raised hitpause to 5 to match kb
set_hitbox_value(AT_UTILT, ig, HG_HITPAUSE_SCALING, .4); // added hp scaling
set_hitbox_value(AT_UTILT, ig, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_UTILT, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_UTILT, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_UTILT, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, ig, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTILT, ig, HG_HITBOX_GROUP, 2);

ig++;

set_hitbox_value(AT_UTILT, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, ig, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, ig, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTILT, ig, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, ig, HG_HITBOX_X, 27);
set_hitbox_value(AT_UTILT, ig, HG_HITBOX_Y, -75);
set_hitbox_value(AT_UTILT, ig, HG_WIDTH, 87);
set_hitbox_value(AT_UTILT, ig, HG_HEIGHT, 89);
set_hitbox_value(AT_UTILT, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, ig, HG_DAMAGE, 5); // raised damage to better reward most likely to land strike
set_hitbox_value(AT_UTILT, ig, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, ig, HG_BASE_KNOCKBACK, 7); // raised kb to 5 from 3/4 (can't remember LOL)
set_hitbox_value(AT_UTILT, ig, HG_KNOCKBACK_SCALING, .3); // raised kb scaling to .4 from .3
set_hitbox_value(AT_UTILT, ig, HG_BASE_HITPAUSE, 5); // raised hitpause to 5 to match kb
set_hitbox_value(AT_UTILT, ig, HG_HITPAUSE_SCALING, .4); // added hp scaling
set_hitbox_value(AT_UTILT, ig, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_UTILT, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_UTILT, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_UTILT, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, ig, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTILT, ig, HG_HITBOX_GROUP, 2);