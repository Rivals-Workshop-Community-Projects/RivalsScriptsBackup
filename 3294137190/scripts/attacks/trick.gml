set_attack_value(AT_TRICK, AG_SPRITE, sprite_get("tattack"));
set_attack_value(AT_TRICK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TRICK, AG_HURTBOX_SPRITE, asset_get("tattack_hurt"));

//Startup
set_window_value(AT_TRICK, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TRICK, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TRICK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TRICK, 1, AG_WINDOW_SFX, sound_get("sprj_nokonata_noko3"));
set_window_value(AT_TRICK, 1, AG_WINDOW_SFX_FRAME, 14);
set_window_value(AT_TRICK, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_TRICK, 1, AG_WINDOW_HSPEED_TYPE, 1);

//Active
set_window_value(AT_TRICK, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TRICK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TRICK, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_TRICK, 2, AG_WINDOW_HSPEED_TYPE, 1);

//Endlag
set_window_value(AT_TRICK, 3, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TRICK, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_TRICK, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_TRICK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_TRICK, 2);

//Multihit 1
set_hitbox_value(AT_TRICK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TRICK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TRICK, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_TRICK, 1, HG_HITBOX_X, 95);
set_hitbox_value(AT_TRICK, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_TRICK, 1, HG_WIDTH, 173);
set_hitbox_value(AT_TRICK, 1, HG_HEIGHT, 67);
set_hitbox_value(AT_TRICK, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_TRICK, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TRICK, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_TRICK, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TRICK, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_TRICK, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TRICK, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_TRICK, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_TRICK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_TRICK, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TRICK, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_TRICK, 1, HG_TECHABLE, 1);

//Finisher
set_hitbox_value(AT_TRICK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TRICK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_TRICK, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_TRICK, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_TRICK, 2, HG_HITBOX_X, 95);
set_hitbox_value(AT_TRICK, 2, HG_HITBOX_Y, -29);
set_hitbox_value(AT_TRICK, 2, HG_WIDTH, 173);
set_hitbox_value(AT_TRICK, 2, HG_HEIGHT, 67);
set_hitbox_value(AT_TRICK, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_TRICK, 2, HG_SHAPE, 2);
set_hitbox_value(AT_TRICK, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_TRICK, 2, HG_ANGLE, 45);
set_hitbox_value(AT_TRICK, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_TRICK, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_TRICK, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_TRICK, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_TRICK, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_TRICK, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_TRICK, 2, HG_HITBOX_GROUP, -1);