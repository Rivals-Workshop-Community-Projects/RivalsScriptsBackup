set_attack_value(AT_TRICK_2, AG_SPRITE, sprite_get("tattack"));
set_attack_value(AT_TRICK_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TRICK_2, AG_HURTBOX_SPRITE, asset_get("tattack_hurt"));

//Startup
set_window_value(AT_TRICK_2, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_TRICK_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TRICK_2, 1, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_TRICK_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TRICK_2, 1, AG_WINDOW_SFX, sound_get("sprj_nokonata_noko2"));
set_window_value(AT_TRICK_2, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_TRICK_2, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_TRICK_2, 1, AG_WINDOW_HSPEED_TYPE, 1);

//Active
set_window_value(AT_TRICK_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TRICK_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TRICK_2, 2, AG_WINDOW_ANIM_FRAME_START, 19);

//Endlag
set_window_value(AT_TRICK_2, 3, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TRICK_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TRICK_2, 3, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_TRICK_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_TRICK_2, 2);

//Hitbox
set_hitbox_value(AT_TRICK_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TRICK_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TRICK_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_TRICK_2, 1, HG_HITBOX_X, 66);
set_hitbox_value(AT_TRICK_2, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_TRICK_2, 1, HG_WIDTH, 100);
set_hitbox_value(AT_TRICK_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_TRICK_2, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_TRICK_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_TRICK_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_TRICK_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_TRICK_2, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_TRICK_2, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_TRICK_2, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_TRICK_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_TRICK_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_TRICK_2, 1, HG_HITBOX_GROUP, -1);