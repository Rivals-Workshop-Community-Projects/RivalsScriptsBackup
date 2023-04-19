set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

//start up
set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 7);

//active
set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 5);

//recovery
set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);


set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DTILT, 4, AG_WINDOW_SFX, sound_get("UNGH"));
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_DTILT, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_DTILT, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DTILT, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_HSPEED, 0);


set_num_hitboxes(AT_DTILT, 1);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -21);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 84);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("sf_hit2"));
set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 4);
