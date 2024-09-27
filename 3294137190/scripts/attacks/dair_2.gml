set_attack_value(AT_DAIR_2, AG_CATEGORY, 1);
set_attack_value(AT_DAIR_2, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR_2, AG_LANDING_LAG, 9);
set_attack_value(AT_DAIR_2, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR_2, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR_2, 1, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR_2, 1, AG_WINDOW_SFX, sound_get("sprj_nokonata_noko3"));
set_window_value(AT_DAIR_2, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_DAIR_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR_2, 2, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_DAIR_2, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR_2, 3, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DAIR_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR_2, 2);

//Whip Hit 1
set_hitbox_value(AT_DAIR_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR_2, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR_2, 1, HG_HITBOX_Y, 34);
set_hitbox_value(AT_DAIR_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DAIR_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DAIR_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DAIR_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR_2, 1, HG_HITPAUSE_SCALING, .0);
set_hitbox_value(AT_DAIR_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DAIR_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR_2, 1, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_DAIR_2, 1, HG_ANGLE_FLIPPER, 9);

//Whip Hit 2
set_hitbox_value(AT_DAIR_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR_2, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR_2, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_DAIR_2, 2, HG_HITBOX_Y, 34);
set_hitbox_value(AT_DAIR_2, 2, HG_WIDTH, 90);
set_hitbox_value(AT_DAIR_2, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_DAIR_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR_2, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR_2, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DAIR_2, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR_2, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DAIR_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DAIR_2, 2, HG_EXTRA_CAMERA_SHAKE, 2);