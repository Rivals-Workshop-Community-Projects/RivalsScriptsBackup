set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 5);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

//Start
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound_get("soniccharge"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);

//Charge
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

//Dash
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .25);

//End
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);

set_num_hitboxes(AT_EXTRA_3,2);

set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 75);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 40);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, -30);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 40);
set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 60);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));