set_attack_value(AT_DATTACK_2, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK_2, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK_2, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK_2, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DATTACK_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK_2, 1, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DATTACK_2, 1, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DATTACK_2, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK_2, 1, AG_WINDOW_SFX, sound_get("sprj_nokonata_noko3"));
set_window_value(AT_DATTACK_2, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_DATTACK_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK_2, 2, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_DATTACK_2, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DATTACK_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK_2, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DATTACK_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_DATTACK_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK_2, 1);

set_hitbox_value(AT_DATTACK_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK_2, 1, HG_HITBOX_X, 49);
set_hitbox_value(AT_DATTACK_2, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DATTACK_2, 1, HG_WIDTH, 94);
set_hitbox_value(AT_DATTACK_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_DATTACK_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DATTACK_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK_2, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DATTACK_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK_2, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DATTACK_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DATTACK_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DATTACK_2, 1, HG_EXTRA_CAMERA_SHAKE, 2);