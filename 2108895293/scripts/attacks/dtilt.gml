set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 6);

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 4);//this window is basically nonexistent. it's fully iasa.
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 6);//this window is basically nonexistent. it's fully iasa.
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_DTILT, 1); 

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 69);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 29);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 40); //40
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));