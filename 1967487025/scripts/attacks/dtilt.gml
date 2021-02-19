set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_DTILT, 1, AG_WINDOW_HSPEED, 6.5);
//set_window_value(AT_DTILT, 1, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_DTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

set_num_hitboxes(AT_DTILT, 2);

//back hit
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, -30);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 49);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_DTILT, 1, HG_DRIFT_MULTIPLIER, .5);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 303);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 78);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_DTILT, 2, HG_DRIFT_MULTIPLIER, .3);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 303);
