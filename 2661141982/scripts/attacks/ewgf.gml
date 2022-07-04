set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("ewgf"));
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 0);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("ewgf_hurt"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 0);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_1, 1);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 80);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_EXTRA_1, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, ewgf_fx);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_EXTRA_1, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, -1);