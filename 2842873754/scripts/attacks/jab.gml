set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("sfx_hammerswing_s"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 3);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 2);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sound_get("sfx_hammerswing_s"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 3);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 4);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, sound_get("sfx_hammerswing_l"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 18);

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 24);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 19);


set_num_hitboxes(AT_JAB, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 84);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("sfx_hammerhit_s"));
//set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 44);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 96);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("sfx_hammerhit_s"));
//set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 64);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 85);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("sfx_hammerhit_l"));
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 2);
