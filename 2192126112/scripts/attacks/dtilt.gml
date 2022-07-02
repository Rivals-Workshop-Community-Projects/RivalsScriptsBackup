set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));




set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("demo_sword_swing2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, 0);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_DTILT, 3, AG_WINDOW_SFX, 0);
set_window_value(AT_DTILT, 3, AG_WINDOW_SFX_FRAME, 0);

set_num_hitboxes(AT_DTILT, 1);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 59);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 98);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 75);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("cbar_hitbod1"));