set_attack_value(AT_FSPECIAL, AG_CATEGORY, 0);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_bash_hit"));

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 48);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ori_grenade_launch"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 42);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 66);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 253);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("mafia_punch_strong"));
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_TECHABLE, 1);
