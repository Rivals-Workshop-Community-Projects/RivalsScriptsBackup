set_attack_value(AT_DTILT, AG_CATEGORY, 0);
set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_OFF_LEDGE, 0);

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 9); 
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

// set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 0);
// set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 12);
// set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
// set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);
// set_window_value(AT_DTILT, 4, AG_WINDOW_HSPEED, 7); // old 9 
// set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_DTILT, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
// set_window_value(AT_DTILT, 4, AG_WINDOW_HSPEED_TYPE, 2);

// set_window_value(AT_DTILT, 5, AG_WINDOW_TYPE, 0);
// set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 4);
// set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8);
// set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
// set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_DTILT, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
// set_window_value(AT_DTILT, 5, AG_WINDOW_SFX_FRAME, 3);
// set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

// set_window_value(AT_DTILT, 6, AG_WINDOW_TYPE, 0);
// set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 12);
// set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
// set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 10);
// set_window_value(AT_DTILT, 6, AG_WINDOW_HSPEED, 8); // old 9 
// set_window_value(AT_DTILT, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_DTILT, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
// set_window_value(AT_DTILT, 6, AG_WINDOW_HSPEED_TYPE, 2);

// set_window_value(AT_DTILT, 7, AG_WINDOW_TYPE, 0);
// set_window_value(AT_DTILT, 7, AG_WINDOW_LENGTH, 6);
// set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAME_START, 12);
// set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAMES, 4);
// set_window_value(AT_DTILT, 7, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DTILT,1);

// set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
// set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 6);
// set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -24);
// set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 30);
// set_hitbox_value(AT_DTILT, 1, HG_WIDTH,66);
// set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 48);
// set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
// set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 10);
// set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 7);
// set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 361);//old 70
// set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5); //old 3
// set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 4);
// set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 301);
// set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
// set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
// set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 6);
// set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 3);
// set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, -1);
// set_hitbox_value(AT_DTILT, 1, HG_DRIFT_MULTIPLIER, .001);

// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 4);
// set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 6);
// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -24);
// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 30);
// set_hitbox_value(AT_DTILT, 2, HG_WIDTH,66);
// set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 48);
// set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 2);
// set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 10);
// set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 7);
// set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 361);//old 70
// set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 6); //old 3
// set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 6);
// set_hitbox_value(AT_DTILT, 2, HG_TECHABLE, 3);
// set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 301);
// set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
// set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
// set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, -1);
// set_hitbox_value(AT_DTILT, 2, HG_DRIFT_MULTIPLIER, .001);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW,2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH,66);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 75);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6); 
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, plasma_hfx);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, -1);