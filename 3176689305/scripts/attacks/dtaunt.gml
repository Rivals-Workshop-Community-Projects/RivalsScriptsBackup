set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("dtaunt"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

//startup 1
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("dream_nail_charge"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 1); 

//startup hold
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 1);

//startup 2
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 36);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_SFX, sound_get("dream_nail_slash"));
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_SFX_FRAME, 35);

//swipe
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 1);

//hold
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_TYPE, 2);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAMES, 1);

//end
set_window_value(AT_EXTRA_2, 6, AG_WINDOW_TYPE, 2);
set_window_value(AT_EXTRA_2, 6, AG_WINDOW_LENGTH, 28);
set_window_value(AT_EXTRA_2, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_EXTRA_2, 6, AG_WINDOW_ANIM_FRAMES, 6);

set_num_hitboxes(AT_EXTRA_2,1);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 56);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 160);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_EXTRA_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 35);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_PARTICLE_NUM, 1);
