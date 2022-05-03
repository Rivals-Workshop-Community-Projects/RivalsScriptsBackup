set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

//------------------------------------------------------------------------------
// Attack Windows
//------------------------------------------------------------------------------

set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("sfx_at_kick_01"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 18); //19
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);



//------------------------------------------------------------------------------
// Hitboxes
//------------------------------------------------------------------------------

set_num_hitboxes(AT_DTILT, 2);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 43);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 47);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 65);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.5); //0.05
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.25);
//set_hitbox_value(AT_DTILT, 1, HG_EXTRA_HITPAUSE, 3); // Edit this
//set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
//set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("sfx_hit_kick"));
set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0); // 0 = circle, 1 = rectangle, 2 = rounded rectangle
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 74);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -11);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 42);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 65);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.5); //0.05
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.25);
//set_hitbox_value(AT_DTILT, 2, HG_EXTRA_HITPAUSE, 3); // Edit this
//set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
//set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, sound_get("sfx_hit_kick"));
set_hitbox_value(AT_DTILT, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 1);
