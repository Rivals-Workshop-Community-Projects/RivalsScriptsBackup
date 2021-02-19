set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 5);



set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("slash1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 15); //Doesn't have whifflag; most jab1s don't
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);

//loop

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 48);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 12);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 1); 

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 29);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 54);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, .0);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("slash_hit"));

set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 4);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 56);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 68);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 88);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("click2"));