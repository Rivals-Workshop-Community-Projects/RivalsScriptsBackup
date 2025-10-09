
set_attack_value(AT_DTILT, AG_CATEGORY, 0);
set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);


set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("slide"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HSPEED, 2.5);


set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 5.5);
//set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_WHIFFLAG, 1);


set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);



set_num_hitboxes(AT_DTILT, 2);


set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW,1 )
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME,6);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 55);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 95);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DTILT, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
//set_hitbox_value(AT_DTILT, 1, HG_EXTRA_HITPAUSE, 10);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW,2 )
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME,10);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 45);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 95);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 2, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DTILT, 2, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
//set_hitbox_value(AT_DTILT, 2, HG_EXTRA_HITPAUSE, 10);