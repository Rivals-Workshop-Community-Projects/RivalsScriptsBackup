set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);

//very skillful!
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//i see you!
set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, -1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 5);

//big bonus!
set_window_value(AT_TAUNT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_TAUNT, 8, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 8, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_TAUNT, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 7);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 30);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 270);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_TAUNT, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sound_get("slap"));
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 304);