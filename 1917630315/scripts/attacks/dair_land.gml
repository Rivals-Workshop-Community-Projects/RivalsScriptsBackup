set_attack_value(AT_EXTRA_1, AG_CATEGORY, 0);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("dair_land"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("dair_land_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_hit"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_1,1);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 192);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 35);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));