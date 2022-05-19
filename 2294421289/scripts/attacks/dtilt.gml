set_attack_value(AT_DTILT, AG_CATEGORY, 0)
set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("swing_medium"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 6); //5
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 2);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 70);//70
set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 3); //0
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6.55);//6.3
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.25);//0.23
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 35);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 66);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 70);//70
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 6.55);//6.3
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.25);//0.23
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

